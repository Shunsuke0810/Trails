class AddUnitRefToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :unit, null: false, foreign_key: true
  end
end
