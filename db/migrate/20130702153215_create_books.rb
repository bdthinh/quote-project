class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :names
      t.string :content
      t.timestamps
    end
  end
end
