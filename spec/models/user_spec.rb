require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Add New User' do
    it 'Create a new user' do
      expect{ User.create(name: 'User 9000', email: 'user9000@user.com') }.to change(User, :count).by(1)
    end
  end

  context 'Associations' do
    it 'have_many?' do
      is_expected.to have_many(:bookings)
    end
  end
end
