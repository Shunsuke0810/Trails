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
  factory :user_b, :class => 'user' do
    name { 'B' }
    email {'test_b@test.com'}
    password {'aaaaaa'}
    password_confirmation {'aaaaaa'}
    admin {'false'}
    position { 'driver' }
    unit { '東京駅' }
  end
  factory :user_c, :class => 'user' do
    id {1}
    name { 'C' }
    email {'test@test.com'}
    password {'aaaaaa'}
    password_confirmation {'aaaaaa'}
    admin {'false'}
    position { 'driver' }
    unit_id { 1 }
    
  end
  factory :user_d, :class => 'user' do
    id {1}
    name { 'A' }
    email {'test@test.com'}
    password {'aaaaaa'}
    password_confirmation {'aaaaaa'}
    admin {'false'}
    created_at { Date.today }
    updated_at { Date.today }
    position { 'driver' }
    unit_id { 1 }
  end
  factory :user_post, :class => 'user' do
    name { 'A' }
    email {'test@test.com'}
    password {'aaaaaa'}
    password_confirmation {'aaaaaa'}
    admin {'false'}
    position { 'driver' }
    unit_id { 1 }
    association :post
  end
  factory :user_admin, :class => 'user' do
    name { 'admin' }
    email {'admin@test.com'}
    password {'aaaaaa'}
    password_confirmation {'aaaaaa'}
    admin {'true'}
    position { 'driver' }
    unit_id { 1 }
  end
  factory :user_general, :class => 'user' do
    name { 'general' }
    email {'general@test.com'}
    password {'aaaaaa'}
    password_confirmation {'aaaaaa'}
    admin {'false'}
    position { 'driver' }
    unit_id { 1 }
  end
end