class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.string :action
      t.datetime :date
      t.string :table

      t.timestamps
    end
  end
end
