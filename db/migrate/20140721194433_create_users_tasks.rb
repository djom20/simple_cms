class CreateUsersTasks < ActiveRecord::Migration
  def change
    create_table :users_tasks do |t|
      t.integer :user_id
      t.integer :task_id
      t.integer :state
      t.timestamps
    end
  end
end
