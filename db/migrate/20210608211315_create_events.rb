class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.string :location
      t.string :image
      t.int :user_id

      t.timestamps
    end
  end
end
