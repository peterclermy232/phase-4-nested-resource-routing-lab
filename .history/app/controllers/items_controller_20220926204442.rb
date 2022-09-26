class ItemsController < ApplicationController
  rescue_from ActiveRecord::RE

  def index
    items = Item.all
    render json: items, include: :user
  end

end
