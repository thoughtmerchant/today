class RatingsController < ApplicationController

  def create
    Rating.create!(params[:rating])
    render nothing: true
  end

end
