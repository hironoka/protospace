class PrototypesController < ApplicationController

  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :move_to_index, except: [:index]
  before_action :set_prototype, only: [:show, :edit, :update, :destroy]

  def index
    @prototypes = Prototype.eager_load(:user,:main_image)
  end

  def new
    @prototype = Prototype.new
    @prototype.images.build
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to root_path, notice: 'Post prototype successfully'
    else
      redirect_to new_prototype_path, alert: 'something is empty'
    end
  end

  def show
  end

  def destroy
    @prototype.destroy
    redirect_to :root, notice: 'Deleted prototype successfully'
  end

  def edit
  end

  def update
    @prototype.update(prototype_params)
    redirect_to prototype_path, notice: 'Updated prototype successfully'
  end

private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

  def prototype_params
    params.require(:prototype).permit(
    :user_id,
    :title,
    :catch_copy,
    :concept,
    images_attributes: [:id,  :prototype_id, :file, :status]
    )
  end

end
