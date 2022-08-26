FactoryBot.define do
  factory :post, :class => 'post' do
    ocurence { Date.today }
    content { 'test_content' }
    location { 'test_location' }
    train_code {'test_train_code'}
    user_id {1}
  end
end