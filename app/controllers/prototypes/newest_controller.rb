class Prototypes::NewestController < ApplicationController

  def index
    @prototypes = Prototype.eager_load(:user, :main_image).order('id DESC')
    render "prototypes/index"
  end

end
