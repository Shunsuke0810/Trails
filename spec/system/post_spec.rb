require 'rails_helper'
RSpec.describe '投稿機能', type: :system do

  describe '投稿機能テスト' do
    before do
      FactoryBot.create(:unit)
      FactoryBot.create(:label)
      visit new_user_path
        fill_in 'user[name]', with: 'A'
        fill_in 'user[email]', with: 'aaa@aaa.com'
        fill_in 'user[password]', with: 'aaaaaa'
        fill_in 'user[password_confirmation]', with: 'aaaaaa'
        fill_in 'user[position]', with: 'driver'
        find("#user_unit_id").find("option[value='1']").select_option
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
    # context '既存の投稿を編集する' do
    #   it '編集内容が正しく反映される' do
    #     FactoryBot.create(:post)
    #     visit edit_post_path()
    #     fill_in 'post[content]', with: 'test_content_edited'
    #     click_button 'commit'
    #     expect(page).to have_content 'test_content_edited'
    #   end
    # end
  end
end