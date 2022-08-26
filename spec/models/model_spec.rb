require 'rails_helper'
describe 'モデル機能', type: :model do
  describe '所属部署作成テスト' do
    context '所属部署名を作成' do
      it '作成した内容が正しく反映される' do
        unit = FactoryBot.build(:unit)
        expect(unit).to be_valid
      end
    end
    context '所属部署名の入力が空' do
      it 'バリデーションにひっかかる' do
        unit = Unit.new(name:'')
        expect(unit).not_to be_valid
      end
    end
  end
end