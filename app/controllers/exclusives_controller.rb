class ExclusivesController < ApplicationController

  def index
    render json: Exclusife.all
  end
end
