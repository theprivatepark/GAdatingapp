class AddMyersBriggToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :personality, :string
  end
end
