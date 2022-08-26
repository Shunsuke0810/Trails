FactoryBot.define do
  factory :label, :class => 'label' do
    name { 'Label_A' }
    created_at { Date.today }
    updated_at { Date.today }
  end
end
