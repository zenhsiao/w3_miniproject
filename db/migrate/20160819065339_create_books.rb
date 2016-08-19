class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.integer :isbn
      t.timestamps
    end
  end
end
