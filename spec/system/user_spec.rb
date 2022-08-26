require 'rails_helper'
RSpec.describe 'ユーザーモデル機能', type: :system do

  describe 'ユーザー登録テスト' do
    before do
    FactoryBot.create(:unit)
    end
    context 'ユーザー新規登録' do
      it '新規登録が完了し、ユーザーTOPページに遷移する' do
        visit new_user_path
        fill_in 'user[name]', with: 'A'
        fill_in 'user[email]', with: 'aaa@aaa.com'
        fill_in 'user[password]', with: 'aaaaaa'
        fill_in 'user[password_confirmation]', with: 'aaaaaa'
        fill_in 'user[position]', with: 'driver'
        find("#user_unit_id").find("option[value='1']").select_option
        click_button 'commit'
        expect(page).to have_content 'Aのページ'
      end
    end
    context 'ログインフォーム入力' do
      it 'ログイン完了' do
        FactoryBot.create(:user_a)
        visit new_session_path
        fill_in 'session[email]', with: 'test@test.com'
        fill_in 'session[password]', with: 'aaaaaa'
        click_button 'commit'
        expect(page).to have_content 'Aのページ'
      end
    end
    context 'ログアウト実行' do
      it 'ログアウト完了' do
        FactoryBot.create(:user_a)
        visit new_session_path
        fill_in 'session[email]', with: 'test@test.com'
        fill_in 'session[password]', with: 'aaaaaa'
        click_button 'commit'
        click_link "Logout"
        expect(page).to have_content 'ログアウトしました'
      end
    end
    context 'ログインせずに投稿画面のパスを入力' do
      it 'ログイン画面に遷移' do
        visit new_post_path
        expect(page).to have_content 'Login'
      end
    end
    context 'ユーザー情報を編集' do
      it '編集内容が反映される' do
        FactoryBot.create(:user_a)
        visit new_session_path
        fill_in 'session[email]', with: 'test@test.com'
        fill_in 'session[password]', with: 'aaaaaa'
        click_button 'commit'
        visit edit_user_path(1)
        fill_in 'user[name]', with: 'B'
        fill_in 'user[email]', with: 'aaa@aaa.com'
        fill_in 'user[password]', with: 'aaaaaa'
        fill_in 'user[password_confirmation]', with: 'aaaaaa'
        fill_in 'user[position]', with: 'driver'
        find("#user_unit_id").find("option[value='1']").select_option
        click_button 'commit'
        expect(page).to have_content 'Bのページ'
        expect(page).to have_content 'ユーザー情報が編集されました'
      end
    end
  end
end