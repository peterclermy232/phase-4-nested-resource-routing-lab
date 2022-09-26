class ItemsController < ApplicationController
  resc

  def index
    items = Item.all
    render json: items, include: :user
  end

end
