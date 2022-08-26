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
        unit = FactoryBot.build(:unit, name: nil )
        expect(unit).not_to be_valid
      end
    end
  end
  describe 'ユーザー作成テスト' do
    context 'ユーザー新規作成' do
      it '作成した内容が正しく反映される' do
        user = FactoryBot.build(:user_a)
        expect(user).to be_valid
      end
    end
    context 'ユーザー名が空' do
      it 'バリデーションにひっかかる' do
        user = FactoryBot.build(:user_a, name: nil)
        expect(user).not_to be_valid
      end
    end
    context 'パスワードが無効な形式' do
      it 'バリデーションにひっかかる' do
        user = FactoryBot.build(:user_a, email: 'aaa')
        expect(user).not_to be_valid
      end
    end
    context 'パスワードが空' do
      it 'バリデーションにひっかかる' do
        user = FactoryBot.build(:user_a,  password: nil)
        expect(user).not_to be_valid
      end
    end
    context 'デフォルトのユーザー作成時' do
      it 'admin:falseになる' do
        user = FactoryBot.build(:user_a, )
        expect(user.admin).to eq false
      end
    end
  end
  describe '投稿機能作成テスト' do
    context '投稿新規作成' do
      it '作成した内容が正しく反映される' do
        post = FactoryBot.build(:post)
        expect(post).to be_valid
      end
    end
    context '発生時刻の入力が空' do
      it 'バリデーションにひっかかる' do
        post = FactoryBot.build(:post, ocurence: nil )
        expect(post).not_to be_valid
      end
    end
    context '発生内容の入力が空' do
      it 'バリデーションにひっかかる' do
        post = FactoryBot.build(:post, content: nil )
        expect(post).not_to be_valid
      end
    end
  end
  describe 'コメント機能テスト' do
    before do
      FactoryBot.create(:unit)
      FactoryBot.create(:user_a)
      FactoryBot.create(:post)
    end
    context 'コメント新規作成' do
      it '作成した内容が正しく反映される' do
        comment = FactoryBot.build(:comment)
        expect(comment).to be_valid
      end
    end
    context 'コメントを空で作成' do
      it 'バリデーションにひっかかる' do
        comment = FactoryBot.build(:comment, content: nil)
        expect(comment).not_to be_valid
      end
    end
  end
end