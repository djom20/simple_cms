class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
	  t.string :description
      t.string :state, :default => 1
      t.timestamps
    end

    Ticket.create!(description: 'Take out the trash')
    Ticket.create!(description: 'I will write another task')
    Ticket.create!(description: 'Go out and buy a dictionary')
    Ticket.create!(description: 'Remember to do the food at 6pm')
  end
end
