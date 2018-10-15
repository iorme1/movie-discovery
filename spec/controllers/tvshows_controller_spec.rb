require 'rails_helper'
require_relative '../../lib/movie_db_api.rb'
require_relative '../../app/presenters/tvshows/index_presenter.rb'

RSpec.describe TvshowsController, type: :controller do
  describe 'GET index' do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "renders the #index view" do
      get :index
      expect(response).to render_template :index
    end

    it "assigns @presenter" do
      get :index
      expect(assigns(:presenter)).not_to be(nil)
    end

    it "assigns @image_path" do
      get :index
      expect(assigns(:image_path)).not_to be(nil)
    end
  end
end
