class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :user_id
      t.float :lat
      t.float :lon
      t.text :note_text
      t.string :photo_uri
      t.datetime :expiration

      t.timestamps
    end
  end
end
