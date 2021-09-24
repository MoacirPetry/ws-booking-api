FactoryBot.define do
  factory :booking do
    start_at { Date.tomorrow }
    finish_at { Date.tomorrow+5 }
    user
    agent
  end
end