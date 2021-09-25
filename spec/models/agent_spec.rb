require 'rails_helper'

RSpec.describe Agent, type: :model do
  context 'Add New Agent' do
    it 'Create a new agent' do
      expect{ Agent.create(name: 'Agent 9000', email: 'agent9000@user.com') }.to change(Agent, :count).by(1)
    end
  end
  context 'Associations' do
    it 'have_many?' do
      is_expected.to have_many(:bookings)
      # TODO review, the user doesn't have the belongs_to
      # is_expected.to have_many(:users)
    end
  end
end
