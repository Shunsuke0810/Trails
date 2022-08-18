class AddDetailsToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :lat, :float
    add_column :posts, :lng, :float
  end
end
