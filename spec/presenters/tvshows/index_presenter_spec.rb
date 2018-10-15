require 'rails_helper'
require_relative '../../../lib/movie_db_api.rb'
require_relative '../../../app/presenters/tvshows/index_presenter.rb'

RSpec.describe Tvshows::IndexPresenter do
  let(:presenter) { Tvshows::IndexPresenter.new("test") }

  it "should initialize search params instance variable" do
    expect(presenter.search_params).to eq("test")
  end

  it "should respond to shows_description" do
    expect(presenter).to respond_to(:shows_description)
  end

  it "should respond to shows" do
    expect(presenter).to respond_to(:shows)
  end

  describe "#shows_description" do
    it "should return 'Popular TV Shows' when search_params is nil" do
      presenter = Tvshows::IndexPresenter.new(nil)
      expect(presenter.shows_description).to eq("Popular TV Shows")
    end

    it "should return Results for 'search_params value' when search_params not nil" do
      presenter = Tvshows::IndexPresenter.new("Breaking Bad")
      expect(presenter.shows_description).to eq("Results for 'Breaking Bad'")
    end
  end

  describe "#shows" do
    it "should call 'search' with appropriate argument when search params not nil" do
      presenter = Tvshows::IndexPresenter.new("example")
      expect(MovieDbApi::TvShow).to receive(:search).with("example")
      presenter.shows
    end

    it "should call 'get_popular' when search params nil" do
      presenter = Tvshows::IndexPresenter.new(nil)
      expect(MovieDbApi::TvShow).to receive(:get_popular)
      presenter.shows
    end
  end
end
