class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :location
      t.text :description
      t.boolean :has_meal
      t.boolean :has_alcohol

      t.timestamps
    end
  end
end
