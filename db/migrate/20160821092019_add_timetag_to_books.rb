class AddTimetagToBooks < ActiveRecord::Migration[5.0]
  def change
  	add_column :books, :出版日期, :date

  	add_column :books, :上架日期, :datetime
  end
end
