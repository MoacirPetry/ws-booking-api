require 'rails_helper'

RSpec.describe 'Api::V1::BookingController', type: :routing do
  describe 'routing' do
    it 'routes to #create' do
      expect(post: '/booking').to route_to('api/v1/booking#create')
    end
    it 'routes to #destroy' do
      expect(delete: '/booking').to route_to('api/v1/booking#destroy')
    end
  end
end
