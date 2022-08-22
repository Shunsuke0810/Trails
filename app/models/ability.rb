# class Ability
#   include CanCan::Ability

#   def initialize(user)
#     # ログインしているかつadminカラムがtrueの場合
#     if user && user.admin?
#       # rails_adminへのアクセスを許可
#       can :access, :rails_admin
#       # 全ての機能を使えるように設定
#       can :manage, :all
#     end
#   end
# end
