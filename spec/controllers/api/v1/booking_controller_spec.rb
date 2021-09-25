require 'rails_helper'

RSpec.describe Api::V1::BookingController, type: :controller do

  # OPTIMIZE refactor or improve
  describe 'POST #create' do
    it 'returns http unprocessable_entity' do
      booking_params = FactoryBot.attributes_for(:booking)
      post :create, params: { :booking => booking_params }
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end

  describe 'DELETE #destroy' do
    it 'returns http success' do
      booking = create(:booking)
      delete :destroy, params: {id: booking.id}
      expect(response).to have_http_status(:success)
    end
    it 'requires the :id parameter' do
      expect { delete :destroy }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end

end
