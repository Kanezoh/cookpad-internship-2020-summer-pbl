class Api::V1::TagsController < ApplicationController

  def index
    tags = Tag.all
    tags_hash = tags.map{|tag| tag.attributes.merge({count: tag.recipes.size})}
    render :json => {"tags": tags_hash}
  end

  def show
    tag_id = params[:tag_id]
    tag = Tag.find(tag_id.to_i)
    render :json => {"tag": tag}
  end
end
