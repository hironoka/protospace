class Prototypes::PopularController < ApplicationController

  def index
    @prototypes = Prototype.includes(:user, :main_image).order('likes_count DESC')
    render "prototypes/index"
  end

end
