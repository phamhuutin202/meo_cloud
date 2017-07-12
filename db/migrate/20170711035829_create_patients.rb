class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :firstname
      t.string :lastname
      t.date :birthday
      t.string :address
      t.string :status

      t.timestamps
    end
  end
end
