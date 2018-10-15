require 'rails_helper'
require_relative '../../../lib/movie_db_api.rb'
require_relative '../../../app/presenters/tvshows/show_presenter.rb'

RSpec.describe Tvshows::ShowPresenter do
  let(:presenter) { Tvshows::ShowPresenter.new(100) }
  let(:mock_show_data) do
    {
      "created_by"=>[{"name"=>"David Attenborough"}],
      "genres"=>[{"name"=>"Documentary"}],
      "name"=>"Planet Earth",
      "number_of_episodes"=>11,
      "number_of_seasons"=>1,
      "overview"=>"David Attenborough celebrates the amazing variety of the natural world.",
      "poster_path"=>"/poster_path.jpg"
    }
  end

  before do
    expect(MovieDbApi::TvShow).to receive(:show_details).with(100)
      .and_return(mock_show_data)
  end

  describe "#initalize" do
    it "should initialize show_data instance variable" do
      expect(presenter.show_data).not_to be nil
    end
  end

  it "should respond to name" do
    expect(presenter).to respond_to(:name)
  end

  it "should respond to created_by" do
    expect(presenter).to respond_to(:created_by)
  end

  it "should respond to genre" do
    expect(presenter).to respond_to(:genre)
  end

  it "should respond to number_of_seasons" do
    expect(presenter).to respond_to(:number_of_seasons)
  end

  it "should respond to number_of_episodes" do
    expect(presenter).to respond_to(:number_of_episodes)
  end

  it "should respond to poster_path" do
    expect(presenter).to respond_to(:poster_path)
  end

  it "should respond to overview" do
    expect(presenter).to respond_to(:overview)
  end


  describe "#name" do
    it "should return the name of the show" do
      expect(presenter.name).to eq("Planet Earth")
    end
  end

  describe "#created_by" do
    it "should return the creator of the show when creator exists" do
      expect(presenter.created_by).to eq("David Attenborough")
    end

    it "should return (No listed creator) when creator does not exist" do
      mock_show_data["created_by"] = []
      expect(presenter.created_by).to eq("(No listed creator)")
    end
  end

  describe "#genre" do
    it "should return the genre of the show when genre exists" do
      expect(presenter.genre).to eq("Documentary")
    end

    it "should return (No listed genre) when genre does not exist" do
      mock_show_data["genres"] = []
      expect(presenter.genre).to eq("(No listed genre)")
    end
  end

  describe "#number_of_seasons" do
    it "should return number of seasons" do
      expect(presenter.number_of_seasons).to eq(1)
    end
  end

  describe "#number_of_episodes" do
    it "should return number of episodes" do
      expect(presenter.number_of_episodes).to eq(11)
    end
  end

  describe "#overview" do
    it "should return overview of show" do
      expect(presenter.overview).to eq("David Attenborough celebrates the amazing variety of the natural world.")
    end
  end

  describe "#poster_path" do
    it "should return poster_path url ending" do
      expect(presenter.poster_path).to eq("/poster_path.jpg")
    end
  end
end
