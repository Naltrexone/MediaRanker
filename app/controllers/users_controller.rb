class UsersController < ApplicationController
  def show
    id = params[:id].to_i
      @user = User.find_by(id: id)
      if @user.nil?
        render :not_found, status: :not_found
      end
    end

    def index
      @users = User.all
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to user_path
      else
        render :new
      end
    end

    # def edit
    #   @user = User.find_by(id: params[:id].to_i)
    # end

    # def update
    #   @user = User.find_by(id:params[:id])
    #   @user.update(user_params)
    #   if @user.save
    #     redirect_to user_path
    #   else
    #     render :new
    #   end
    # end

    def destroy
      user = User.find_by(id: params[:id].to_i)
      user.destroy
      redirect_to users_path
    end

    private
    def user_params
      return params.require(:user).permit(:username)
    end

 end
