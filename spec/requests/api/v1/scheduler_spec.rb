require 'rails_helper'

RSpec.describe 'Api::V1::Schedulers', type: :request do
  describe 'GET /week' do
    it 'returns http success' do
      get '/scheduler'
      expect(response).to have_http_status(:success)
    end
  end

end
