class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.datetime :date
      t.text :message
      t.integer :user_id
      t.integer :channel_id

      t.timestamps
    end
  end
end
