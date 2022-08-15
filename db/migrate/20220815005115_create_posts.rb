class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.datetime :ocurence
      t.string :content
      t.string :location
      t.string :train_code

      t.timestamps
    end
  end
end
