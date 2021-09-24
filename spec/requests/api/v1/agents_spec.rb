require 'rails_helper'

RSpec.describe 'Api::V1::Agents', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/agents'
      expect(response).to have_http_status(:success)
    end
  end

end
