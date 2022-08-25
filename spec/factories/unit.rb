FactoryBot.define do
  factory :unit, :class => 'unit' do
    name { '東京駅' }
    created_at { Date.today }
    updated_at { Date.today }
  end
end