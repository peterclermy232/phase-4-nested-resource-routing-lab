class ItemsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    if pa
    items = Item.all
    render json: items, include: :user
  end

end
