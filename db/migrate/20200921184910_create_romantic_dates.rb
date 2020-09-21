class CreateRomanticDates < ActiveRecord::Migration[6.0]
  def change
    create_table :romantic_dates do |t|
      t.integer :initiator_id
      t.integer :acceptor_id
      t.integer :activity_id
      t.string :outcome

      t.timestamps
    end
  end
end
