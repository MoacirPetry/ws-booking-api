require 'rails_helper'

RSpec.describe Api::V1::SchedulerController, type: :controller do

  describe 'GET #week' do
    it 'returns http success' do
      get :week
      expect(response).to have_http_status(:success)
    end
  end

end
