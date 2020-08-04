class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists, id: :uuid do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.datetime :shared
      t.datetime :archived

      t.timestamps
    end
  end
end
