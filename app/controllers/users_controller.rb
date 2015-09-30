class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = Search.create(user_params)
    redirect_to @user
  end

  def show
  end

  def edit
  end

  def update
  end
end
