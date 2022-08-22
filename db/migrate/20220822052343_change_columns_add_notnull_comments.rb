class ChangeColumnsAddNotnullComments < ActiveRecord::Migration[6.0]
  def change
    change_column_null :comments, :content, false
  end
end
