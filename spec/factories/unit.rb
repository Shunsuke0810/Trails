FactoryBot.define do
  factory :unit, :class => 'unit' do
    id {1}
    name { '東京駅' }
    created_at { Date.today }
    updated_at { Date.today }
  end
end