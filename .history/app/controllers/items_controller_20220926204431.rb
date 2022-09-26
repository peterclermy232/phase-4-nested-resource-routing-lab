class ItemsController < ApplicationController
  rescue_from A

  def index
    items = Item.all
    render json: items, include: :user
  end

end
