FactoryBot.define do
  factory :user_a, :class => 'user' do
    name { 'A' }
    email {'test@test.com'}
    password {'aaaaaa'}
    password_confirmation {'aaaaaa'}
    admin {'false'}
    position { 'driver' }
    unit_id { 1 }
  end
end