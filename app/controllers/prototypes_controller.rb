class PrototypesController < ApplicationController
  before_action :move_to_index, :except => [:index]
  def index
    @prototypes = Prototype.new
    @prototype_number = @prototypes.length
    end
  end

  def new
  end

  def create
  end

  def show
    @prototype = Prototype.find(params[:id])
  end

  def destroy
  end

  def edit
    @prototype = Prototype.find(params[:id])
  end

  def update
  end

end
