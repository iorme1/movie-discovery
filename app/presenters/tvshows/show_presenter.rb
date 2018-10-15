module Tvshows
  class ShowPresenter
    attr_reader :show_data

    def initialize(show_id)
      @show_data = MovieDbApi::TvShow.show_details(show_id)
    end

    def name
      @show_data["name"]
    end

    def created_by
      if @show_data["created_by"].any?
        @show_data["created_by"][0]["name"]
      else
        "(No listed creator)"
      end
    end

    def genre
      if @show_data["genres"].any?
        @show_data["genres"][0]["name"]
      else
        "(No listed genre)"
      end
    end

    def number_of_seasons
      @show_data["number_of_seasons"]
    end

    def number_of_episodes
      @show_data["number_of_episodes"]
    end

    def overview
      @show_data["overview"]
    end

    def poster_path
      @show_data["poster_path"]
    end
  end
end
