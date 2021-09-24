require 'rails_helper'

RSpec.describe Api::V1::BookingController, type: :controller do

  # TODO refactor
  # describe 'POST #create' do
  #   it 'returns http success' do
  #     user = create(:user)
  #     agent = create(:agent)
  #     booking_params = FactoryBot.attributes_for(:booking, user: user, agent: agent)
  #     post :create, params: { :booking => booking_params }
  #     expect{response}.to change{ Booking.count }.by(1)
  #   end
  # end

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
