class ItemsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    if params[:user_id]
      user = User.find_user
      items = User.items
    else
    items = Item.all
    end
    render json: items, include: :user
  end
 def show
  item = find_item
  render json: item
  end
  def create
    user = find_user
    item = user.items.create(item_params)
  end
end
