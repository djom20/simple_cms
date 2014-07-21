class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
	  t.string :description
      t.string :state
      t.timestamps
    end
  end
end
