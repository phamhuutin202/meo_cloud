class CreateExams < ActiveRecord::Migration[5.0]
  def change
    create_table :exams do |t|
      t.string    :status
      t.string    :location
      t.references :patient, index: true, foreign_key: true
      t.references :technician, index: true, foreign_key: true
      t.references :doctor, index: true, foreign_key: true
      t.references :eye_prescription, index: true, foreign_key: true
      
      t.timestamps
    end
  end
end
