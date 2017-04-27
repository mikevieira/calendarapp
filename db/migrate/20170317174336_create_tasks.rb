class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :date
      t.time :time
      t.datetime :datetime
      t.string :notes
      t.timestamps
    end
  end
end
