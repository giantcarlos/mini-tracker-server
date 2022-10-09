class CreateMiniatures < ActiveRecord::Migration[6.1]
  def change
    create_table :miniatures do |t|
      t.string :name
      t.string :size
      t.integer :units
      t.integer :miniature_set_id
      t.string :img_url
    end
  end
end
