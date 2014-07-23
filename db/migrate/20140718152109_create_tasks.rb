class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.integer :state, :default => 1
      t.timestamps
    end

    Task.create!(name: 'How to make my first task', description: 'Here will go the description of my task')
    Task.create!(name: 'List of homeworks', description: 'Here will go the other description of this task')
  end
end
