class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to home
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :address, :description, :birth_date, :linkedin, :company_name, :company_ca, :company_sector, :distance, :password, :photo)
  end

end
