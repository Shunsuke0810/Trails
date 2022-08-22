class ChangeColumnsAddNotnullLabels < ActiveRecord::Migration[6.0]
  def change
    change_column_null :labels, :name, false
  end
end
