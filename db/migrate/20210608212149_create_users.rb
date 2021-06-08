class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.int :age
      t.string :location
      t.string :bio
      t.string :password_digest

      t.timestamps
    end
  end
end
