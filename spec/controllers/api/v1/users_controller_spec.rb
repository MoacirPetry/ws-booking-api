require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do

  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
    # OPTIMIZE Using DRY in the get index and to do the render json
    # it 'render json' do
    #   get :index
    #   expect(response.header['Content-Type']).to include 'application/json'
    # end
  end

end
