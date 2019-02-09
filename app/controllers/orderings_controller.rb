class OrderingsController < ApplicationController
  def index
    @categories = Category.order(name: :desc)
    if params[:category_id].present?
      @menus = Menu.where(category_id: params[:category_id])
    else
      @menus = Menu.all
    end
  end
end