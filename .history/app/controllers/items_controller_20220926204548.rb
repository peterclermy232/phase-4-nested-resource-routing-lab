class ItemsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  def index
    items = Item.all
    render json: items, include: :user
  end

end
