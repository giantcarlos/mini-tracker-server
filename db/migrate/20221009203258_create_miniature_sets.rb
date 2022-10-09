class CreateMiniatureSets < ActiveRecord::Migration[6.1]
  def change
    create_table :miniature_sets do |t|
      t.string :name
      t.integer :year
    end
  end
end
