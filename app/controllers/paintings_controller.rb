class PaintingsController < ApplicationController

  def index
    @paintings = Painting.all
  end

  def create
    @painting = Painting.create(params[:painting])
  end
end
