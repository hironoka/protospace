class LikesController < ApplicationController
before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @prototype = Prototype.find(params[:prototype_id])
    @like = @prototype.likes.create(user_id: current_user.id)
    # @like = Like.create(prototype_id: params[:prototype_id], user_id: current_user.id)
    # @likes = Like.where(prototype_id: params[:prototype_id])
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    @prototype = Prototype.find(params[:prototype_id])
  end

end
