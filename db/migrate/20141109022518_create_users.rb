class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :email
      t.string :username
      t.string :pw
      t.string :devicetoken

      t.timestamps
    end
  end
end
