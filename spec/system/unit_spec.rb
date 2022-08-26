require 'rails_helper'
RSpec.describe '所属機能機能', type: :system do
  describe '所属部署機能テスト' do
    context '新規所属部署作成する' do
      it '新規所属部署が追加される' do
      visit new_unit_path
        fill_in 'unit[name]', with: '渋谷駅'
        click_button 'commit'
        expect(page).to have_content '部署[渋谷駅]が追加されました'
      end
    end
  end
end