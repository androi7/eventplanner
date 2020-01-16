class CategoriesController < ApplicationController

  before_action :check_if_logged_in

  def index
    @categories = Category.all

  end

  def show
    @category = Category.find params[:id]
    @events = @category.events
  end
end
