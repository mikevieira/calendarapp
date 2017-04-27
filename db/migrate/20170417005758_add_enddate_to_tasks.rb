class AddEnddateToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :enddate, :date
  end
end
