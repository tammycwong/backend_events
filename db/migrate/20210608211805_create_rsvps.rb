class CreateRsvps < ActiveRecord::Migration[6.1]
  def change
    create_table :rsvps do |t|
      t.int :user_id
      t.int :event_id
      t.string :status

      t.timestamps
    end
  end
end
