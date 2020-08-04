class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.datetime :shared
      t.datetime :archived

      t.timestamps
    end
  end
end
