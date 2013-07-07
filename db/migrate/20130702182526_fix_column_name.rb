class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :books, :content, :contents
  end
end
