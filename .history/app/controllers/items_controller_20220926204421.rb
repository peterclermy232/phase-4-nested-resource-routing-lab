class ItemsController < ApplicationController
  re

  def index
    items = Item.all
    render json: items, include: :user
  end

end
