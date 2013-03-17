class GroupsController < ApplicationController

  before_filter :identify_the_user
  before_filter :authorize_user, :only => [:edit, :update, :destroy, :show]
  
  def identify_the_user
  	@current_user = User.find_by_id(session["user_id"])
  end
  
  def authorize_user
  	@pageUser = Group.find_by_id(params[:id])
  	if @current_user.blank? || @current_user.id != @pageUser.user_id
  		redirect_to groups_url
  	else
  		return true
  	end
  end


  # GET /groups
  # GET /groups.json
  def index
    if session[:user_id].present?
      @groups = Group.where("user_id = #{session[:user_id]}").order('created_at DESC')
    end
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
    @group = Group.find(params[:id])
    @members = GroupMember.where(:group_id => params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @group }
    end
  end

  # GET /groups/new
  # GET /groups/new.json
  def new
    @group = Group.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @group }
    end
  end

  # GET /groups/1/edit
  def edit
    @group = Group.find(params[:id])
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(params[:group])

    respond_to do |format|
      if @group.save
        format.html { redirect_to groups_url, notice: 'Group was successfully created.' }
        format.json { render json: groups_url, status: :created, location: @group }
      else
        format.html { redirect_to groups_url }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /groups/1
  # PUT /groups/1.json
  def update
    @group = Group.find(params[:id])

    respond_to do |format|
      if @group.update_attributes(params[:group])
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group = Group.find(params[:id])
    @group.destroy

    respond_to do |format|
      format.html { redirect_to groups_url }
      format.json { head :no_content }
    end
  end
end
