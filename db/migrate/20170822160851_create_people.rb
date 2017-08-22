class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.date :joined
      t.boolean :going

      t.timestamps
    end
  end
end
