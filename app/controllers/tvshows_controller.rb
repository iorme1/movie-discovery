class TvshowsController < ApplicationController
  before_action :set_image_path, only: [:index, :show]

  def index
    @presenter = Tvshows::IndexPresenter.new(params[:search])
  end

  def show
    @presenter = Tvshows::ShowPresenter.new(params[:id])
  end

  private

  def set_image_path
    @image_path = MovieDbApi::BASE_IMAGE_URL
  end
end
