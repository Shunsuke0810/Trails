require 'rails_helper'
RSpec.describe '投稿機能', type: :system do

  describe '投稿機能テスト' do
    before do
      FactoryBot.create(:unit)
      FactoryBot.create(:label)
      FactoryBot.create(:user_c)
      visit new_session_path
        fill_in 'session[email]', with: 'test@test.com'
        fill_in 'session[password]', with: 'aaaaaa'
        click_button 'commit'
    end
    context '新規投稿が作成される' do
      it '新規投稿が投稿完了画面に正しく表示される' do
        visit new_post_path
        fill_in 'post[ocurence]', with: '002022-08-25-16:30'
        fill_in 'post[content]', with: 'test_content'
        fill_in 'post[location]', with: 'test_location'
        fill_in 'post[train_code]', with: 'test_train_code'
        check 'Label_A'
        click_button 'commit'
        expect(page).to have_content '08/25 16:30'
        expect(page).to have_content 'test_content'
        expect(page).to have_content 'test_location'
        expect(page).to have_content 'test_train_code'
        expect(page).to have_content 'Label_A'
      end
    end
    context '投稿された内容の確認' do
      it '投稿された内容が正しく反映されている' do
        FactoryBot.create(:post)
        visit post_path(1)
        expect(page).to have_content 'test_content'
      end
    end
    context '既存の投稿を編集する' do
      it '編集内容が正しく反映される' do
        FactoryBot.create(:post)
        visit edit_post_path(1)
        fill_in 'post[content]', with: 'test_content_edited'
        click_button 'commit'
        expect(page).to have_content 'test_content_edited'
      end
    end
    context '投稿を削除を実行する' do
      it '削除が実行される' do
        visit new_post_path
        fill_in 'post[ocurence]', with: '002022-08-25-16:30'
        fill_in 'post[content]', with: 'test_content'
        fill_in 'post[location]', with: 'test_location'
        fill_in 'post[train_code]', with: 'test_train_code'
        check 'Label_A'
        click_button 'commit'
        visit my_posts_path
        click_link '削除'
        page.accept_confirm '削除してよろしいですか?'
        expect(page).to have_content '投稿が削除されました'
      end
    end
  end
end