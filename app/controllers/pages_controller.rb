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
end
