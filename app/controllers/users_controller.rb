class UsersController < ApplicationController
  def new
    @user = User.new
  end


  def create
    @user = User.create params[:user]

    if @user.save
      session[:user_id] = user.id
      flash[:success] = 'You have registered'
      redirect_to sync_path
    else
      flash.now[:error] = 'Some error occured'
      render :new
    end
  end


  def update_preferred_cloud
    logger.info current_user.to_yaml
    if current_user.nil?
      flash[:error] = 'We cannot change preferred cloud because you are not logged in'
      redirect_to root_path
    else
      user = User.find current_user[:id]
      user.preferred_cloud = Social::Cloud.find params[:preferred_cloud]
      user.save
      redirect_to root_path
    end
  end
end