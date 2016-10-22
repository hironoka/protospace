class Prototypes::TagsController < ApplicationController

  def index
    @tags = ActsAsTaggableOn::Tag.most_used
    render "tags/index"
  end

  def show
    @tag      = ActsAsTaggableOn::Tag.find(params[:id])
    @prototypes = Prototype.tagged_with(@tag.name).includes([:user, :tags])
    render "tags/show"
  end

end
