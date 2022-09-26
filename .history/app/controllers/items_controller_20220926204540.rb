class ItemsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render

  def index
    items = Item.all
    render json: items, include: :user
  end

end
