class ItemsController < ApplicationController
  rescue_from

  def index
    items = Item.all
    render json: items, include: :user
  end

end
