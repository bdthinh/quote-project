class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :names

      t.timestamps
    end
  end
end
