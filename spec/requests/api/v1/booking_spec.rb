require 'rails_helper'

RSpec.describe 'Api::V1::Bookings', type: :request do

  # TODO improve the code
  describe 'POST /create' do
    it 'returns http success' do
      booking = create(:booking)
      post '/booking', :params => { booking: booking, user_id: booking.user.id, agent_id: booking.agent.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'DELETE /destroy' do
    it 'returns http success' do
      booking = create(:booking)
      delete "/booking?id=#{booking.id}"
      expect(response).to have_http_status(:success)
    end
  end

end
