module TvshowsHelper
  def shows_empty?
    @presenter.shows.blank? && params[:search]
  end
end
