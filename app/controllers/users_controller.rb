class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :set_user, only: [:edit, :show, :update]

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

 private
  def set_user
    @user = User.find(params[:id])
  end

end
