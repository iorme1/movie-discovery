module Tvshows
  class IndexPresenter
    attr_reader :search_params

    def initialize(search_params)
      @search_params = search_params
    end

    def shows_description
      @search_params ? "Results for '#{@search_params}'" : "Popular TV Shows"
    end

    def shows
      if @search_params
        MovieDbApi::TvShow.search(@search_params)
      else
        MovieDbApi::TvShow.get_popular
      end
    end
  end
end
