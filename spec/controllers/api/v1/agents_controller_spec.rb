require 'rails_helper'

RSpec.describe Api::V1::AgentsController, type: :controller do

  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
    it 'render json' do
      get :index
      expect(response.header['Content-Type']).to include('application/json')
    end
    it 'responds with JSON' do
      get :index
      JSON.parse(response.body)
      expect{response}.to_not raise_error
    end
  end

end
