FactoryBot.define do
  factory :comment, :class => 'comment' do
    id {1}
    content { 'test' }
    created_at { Date.today }
    updated_at { Date.today }
    user_id {1}
    post_id {1}
  end
end
