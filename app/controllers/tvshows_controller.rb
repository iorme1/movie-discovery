class TvshowsController < ApplicationController
  before_action :set_image_path, only: [:index]

  def index
    @presenter = Tvshows::IndexPresenter.new(params[:search])
  end

  def show
  end

  private

  def set_image_path
    @image_path = MovieDbApi::BASE_IMAGE_URL
  end
end
