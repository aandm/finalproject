class UsersController < ApplicationController

  before_filter :identify_the_user
  before_filter :authorize_user, :only => [:edit, :update, :destroy, :create, :new]
  
  def identify_the_user
  	@current_user = User.find_by_id(session["user_id"])
  end
  
  def authorize_user
  	@pageUser = User.find(params[:id])
  	if @current_user.blank? || @current_user.id != params[:id].to_i
  		redirect_to user_url(params[:id])
  	else
  		return true
  	end
  end

  # GET /users
  # GET /users.json
  def index
  	redirect_to root_url
    @users = User.all

    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.json { render json: @users }
    #end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new
    @action = "new"

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])
    session[:user_id] = @user.id
    session[:username] = @user.username

    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        session[:username] = @user.username
        ConfirmNewUserMailer.confirm(@user).deliver
        format.html { redirect_to "/#{session[:username]}", notice: 'User was successfully created.' }
        format.json { render json: root_url, status: :created, location: @user }
      else
        @action = "new"
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end

  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to "/#{session[:username]}", notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

end
