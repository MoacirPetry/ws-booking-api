require 'rails_helper'

RSpec.describe Booking, type: :model do
  context 'Add New Booking' do
    it 'Create a new booking' do
      user = User.create(name: 'User 9900', email: 'user9900@user.com')
      agent = Agent.create(name: 'Agent 9900', email: 'agent9900@user.com')
      expect{ Booking.create(start_at: Date.tomorrow, finish_at: Date.tomorrow+5, user: user, agent: agent) }.to change(Booking, :count).by(1)
    end
  end
  context 'Associations' do
    it 'belong_to?' do
      is_expected.to belong_to(:user)
      is_expected.to belong_to(:agent)
    end
  end
end
