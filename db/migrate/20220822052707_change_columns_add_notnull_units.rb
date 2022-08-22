class ChangeColumnsAddNotnullUnits < ActiveRecord::Migration[6.0]
  def change
    change_column_null :units, :name, false
  end
end
