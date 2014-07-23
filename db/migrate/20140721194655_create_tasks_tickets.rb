class CreateTasksTickets < ActiveRecord::Migration
  def change
    create_table :tasks_tickets, :id => false do |t|
      t.integer :task_id
      t.integer :ticket_id
      t.integer :state, :default => 1
      t.timestamps
    end

    add_index :tasks_tickets, ["task_id", "ticket_id"]

    #Task 1
    # TasksTickets.create!(task_id: 1, ticket_id: 1)
    # TasksTickets.create!(task_id: 1, ticket_id: 2)

    #Task 2
    # TasksTickets.create!(task_id: 2, ticket_id: 3)
    # TasksTickets.create!(task_id: 2, ticket_id: 4)
  end
end
