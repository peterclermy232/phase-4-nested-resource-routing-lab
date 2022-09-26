class ItemsController < ApplicationController
  recu

  def index
    items = Item.all
    render json: items, include: :user
  end

end
