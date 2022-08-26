require 'rails_helper'
RSpec.describe '管理者ログイン機能', type: :system do
  describe '管理者ログイン' do
    before do
      FactoryBot.create(:unit)
      FactoryBot.create(:label)
    end
    context 'admin:trueのユーザーがadminへのパスを入力' do
      it 'admin画面に遷移できる' do
        FactoryBot.create(:user_admin)
        visit new_session_path
        fill_in 'session[email]', with: 'admin@test.com'
        fill_in 'session[password]', with: 'aaaaaa'
        click_button 'commit'
        visit rails_admin_path
        expect(page).to have_content 'Trails Admin'
      end
    end
    context 'admin:falseのユーザーがadminへのパスを入力' do
      it 'トップ画面へ遷移し警告文が表示される' do
        FactoryBot.create(:user_general)
        visit new_session_path
        fill_in 'session[email]', with: 'general@test.com'
        fill_in 'session[password]', with: 'aaaaaa'
        click_button 'commit'
        visit rails_admin_path
        expect(page).to have_content '管理者以外はアクセス不可！'
        expect(page).to have_content 'Trailsとは'
      end
    end
  end
end