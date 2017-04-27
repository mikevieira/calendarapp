class AddStarttimeToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :starttime, :time
  end
end
