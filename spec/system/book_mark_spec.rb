require 'rails_helper'
RSpec.describe 'ブックマーク機能', type: :system do
  describe 'ブックマーク機能テスト' do
    before do
      FactoryBot.create(:unit)
      FactoryBot.create(:label)
      FactoryBot.create(:user_a)
      FactoryBot.create(:post)
      FactoryBot.create(:user_b)
        visit new_session_path
        fill_in 'session[email]', with: 'test_b@test.com'
        fill_in 'session[password]', with: 'aaaaaa'
        click_button 'commit'
    end
    context 'お気に入りを登録ボタンを押す' do
      it '登録が完了する' do
        click_link 'Show'
        click_on "ブックマークする"
        expect(page).to have_content 'Aさんの投稿をお気に入り登録しました'
      end
    end
    context 'お気に入りを解除ボタンを押す' do
      it '解除が完了する' do
        click_link 'Show'
        click_on "ブックマークする"
        click_on "ブックマークを解除する"
        expect(page).to have_content 'Aさんの投稿をお気に入り解除しました'
      end
    end
    context 'お気に入り＆コメント一覧のリンクに遷移' do
      it 'お気に入りした投稿が表示されている' do
        click_link 'Show'
        click_on "ブックマークする"
        click_on 'Back'
        click_on 'ブックマーク&コメント一覧'
        expect(page).to have_content 'test_content'
      end
    end
  end
end