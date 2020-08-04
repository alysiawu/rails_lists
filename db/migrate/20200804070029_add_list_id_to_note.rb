class AddListIdToNote < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :list_id, :integer
  end
end
