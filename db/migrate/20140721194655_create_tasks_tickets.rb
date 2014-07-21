class CreateTasksTickets < ActiveRecord::Migration
  def change
    create_table :tasks_tickets do |t|
      t.integer :task_id
      t.integer :ticket_id
      t.integer :state
      t.timestamps
    end
  end
end
