class PostsController < ApplicationController

  include AutoHtml

 # before_filter :identify_the_user
 # before_filter :authorize_user, :only => [:edit, :update, :destroy, :create, :new]
  
  def identify_the_user
  	@current_user = User.find_by_id(session["user_id"])
  end
  
  def authorize_user
  	@pageUser = Post.find_by_id(params[:id])
  	if @current_user.blank? || @current_user.id != @pageUser.user_id
  		redirect_to posts_url
  	else
  		return true
  	end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])
    @comments = Comment.where(:post_id => params[:id]).order("id desc")
    @comment = Comment.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
      	format.js
        format.html { redirect_to "/#{session[:username]}", notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to "/#{session[:username]}", notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.js
      format.html { redirect_to "/#{session[:username]}" }
      format.json { head :no_content }
    end
  end

  def index
      user = User.find_by_username(params[:vieweduser])
      session[:vieweduser] = user.username
      session[:viewed_id] = user.id
      if user.present?
        @viewed_id = user.id
        @curruser_id = session[:user_id]
        @posts = Post.where(:user_id => @viewed_id).order("id desc")
        @posts = @posts.page(params[:page]).per(5)
        @username = user.username
      else
        redirect_to root_url
      end
  end

  def friendposts
      @posts = Post.joins(:user.joins(:subscriptions).where(subscription.subscriber_id => session[:user_id]))
      #@posts = Post.where(Post.user.subscription.subscriber_id => session[:user_id]).order("id desc")
      @posts = @posts.page(params[:page]).per(5)
  end   


end
