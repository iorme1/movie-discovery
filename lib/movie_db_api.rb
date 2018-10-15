require 'httparty'
require 'movie_db_api/tv_show'
require 'movie_db_api/movie'
require 'movie_db_api/actor'

module MovieDbApi
  BASE_URL = 'https://api.themoviedb.org/3/'
  BASE_IMAGE_URL = 'https://image.tmdb.org/t/p/'
  API_KEY = ENV['API_KEY']
end
