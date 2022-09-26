class ItemsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, WI

  def index
    items = Item.all
    render json: items, include: :user
  end

end
