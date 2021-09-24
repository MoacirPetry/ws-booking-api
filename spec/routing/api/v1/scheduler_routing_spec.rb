require 'rails_helper'

RSpec.describe 'Api::V1::SchedulerController', type: :routing do
  describe 'routing' do
    it 'routes to #week' do
      expect(get: scheduler_path).to route_to('api/v1/scheduler#week')
    end
  end
end
