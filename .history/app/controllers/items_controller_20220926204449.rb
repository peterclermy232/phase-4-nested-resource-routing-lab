class ItemsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound,

  def index
    items = Item.all
    render json: items, include: :user
  end

end
