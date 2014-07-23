class CreateTasksUsers < ActiveRecord::Migration
  def change
    create_table :tasks_users, :id => false do |t|
      t.integer :task_id
      t.integer :user_id
      t.integer :state, :default => 1
      t.timestamps
    end

    add_index :tasks_users, ["task_id", "user_id"]

    # #User 1
    # UsersTasks.create!(user_id: 1, task_id: 1)
    # UsersTasks.create!(user_id: 1, task_id: 2)

    # #User 2
    # UsersTasks.create!(user_id: 2, task_id: 1)
    # UsersTasks.create!(user_id: 2, task_id: 2)

    # #User 3
    # UsersTasks.create!(user_id: 3, task_id: 1)
    
    # #User 4
    # UsersTasks.create!(user_id: 4, task_id: 2)
  end
end
