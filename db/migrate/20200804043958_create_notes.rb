class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.references :list, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :content
      t.integer :status

      t.timestamps
    end
  end
end
