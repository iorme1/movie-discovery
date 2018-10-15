module MovieDbApi
  module TvShow
    extend self

    def get_popular
      response = HTTParty.get("#{BASE_URL}tv/top_rated?api_key=#{API_KEY}&language=en-US&page=1")
      show_data = JSON.parse(response.body)
      show_data["results"]
    end

    def show_details(tv_id)
      response = HTTParty.get("#{BASE_URL}tv/#{tv_id}?api_key=#{API_KEY}")
      show_data = JSON.parse(response.body)
    end

    def search(query)
      response = HTTParty.get("#{BASE_URL}search/tv?api_key=#{API_KEY}&query=#{query}")
      show_data = JSON.parse(response.body)
      show_data["results"]
    end
  end
end
