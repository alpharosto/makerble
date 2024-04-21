class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.float :age
      t.integer :phone_number
      t.text :description

      t.timestamps
    end
  end
end
