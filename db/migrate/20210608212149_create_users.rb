class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :image
      t.string :username
      t.string :name
      t.integer :age
      t.string :location
      t.string :interests
      t.string :password_digest

      t.timestamps
    end
  end
end
