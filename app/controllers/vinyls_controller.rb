class VinylsController < ApplicationController

  def index
    render json: Vinyl.all
  end

end
