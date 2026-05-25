class CreateTickets < ActiveRecord::Migration[7.1]
  def change
    create_table :tickets do |t|
      t.string :title, null: false
      t.string :customer_email, null: false
      t.string :priority, null: false, default: "normal"
      t.string :status, null: false, default: "open"
      t.text :description, null: false

      t.timestamps
    end

    add_index :tickets, :status
    add_index :tickets, :priority
  end
end
