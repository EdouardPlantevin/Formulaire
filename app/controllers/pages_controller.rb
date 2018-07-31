class PagesController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @users = User.all
  end

  def create
    User.create username: params[:username], email: params[:email], bio: params[:bio]
    redirect_to "/new"
  end

  def profil
    @user = User.find(params[:id])
  end

  def update_bio
    @user = User.find(params[:id])
    @user.bio = params[:bio]
    @user.save
    redirect_to "/new/#{params[:id]}"
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to "/new"
end
end
