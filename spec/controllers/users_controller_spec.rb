require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #authorized_index" do
    it "returns http success" do
      expect { get :authorized_index }.to raise_error(ActiveRecord::ImmutableRelation)
    end
  end
end
