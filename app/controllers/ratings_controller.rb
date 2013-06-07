class RatingsController < ApplicationController

  def create
    Rating.create!(params[:rating])
    render nothing: true
  end

  def index
    @ratings = Rating.all
  end

end
