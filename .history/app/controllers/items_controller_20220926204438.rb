class ItemsController < ApplicationController
  rescue_from ActiveRecord::

  def index
    items = Item.all
    render json: items, include: :user
  end

end
