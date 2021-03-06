class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  
  
  def index
    @users = User.all
   
  end
  def follow
    @user = User.find(params[:id])
  end

  def show
    @posts = current_user.posts
   
  end
  def following
    @title = "Following"
    @user = User.find(params[:user_id])
    @users = @user.followed_users
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:user_id])
    @users = @user.followers
    render 'show_follow'
  end
 
  def new
    @user = User.new
    # @comment = Comment.new
  end


  def edit
  end

 
  def create
    @user = User.new(user_params)
    @comment = current_user.comments.build(comment_params)
    respond_to do |format|
      if @user.save
      
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @user.update(user_params)
 
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :avatar)
  end
end
