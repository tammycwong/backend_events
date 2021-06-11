class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :price
      t.string :date
      t.string :time
      t.string :location
      t.string :image
      t.integer :user_id
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end
