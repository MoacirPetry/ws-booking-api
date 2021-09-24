require 'rails_helper'

RSpec.describe Agent, type: :model do
  context 'Add New Agent' do
    it 'Create a new agent' do
      expect{ Agent.create(name: 'Agent 9000', email: 'agent9000@user.com') }.to change(Agent, :count).by(1)
    end
  end
  # TODO needed to test the associations
  # context 'Associations' do
  #   it 'have_many?' do
  #     is_expected.to have_many(:users)
  #   end
  # end
end
