require 'rails_helper'

RSpec.describe 'Api::V1::AgentsController', type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: agents_path).to route_to('api/v1/agents#index')
    end
  end
end
