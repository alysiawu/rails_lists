class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, if_not_exists: true do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
