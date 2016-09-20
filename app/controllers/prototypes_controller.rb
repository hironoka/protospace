class PrototypesController < ApplicationController
  before_action :move_to_index, except: [:index]
  before_action :set_prototype, only: [:show, :edit]
  before_action :set_user, only: [:show]

  def index
    @prototypes = Prototype.new
  end

  def new
  end

  def create
  end

  def show
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

end
