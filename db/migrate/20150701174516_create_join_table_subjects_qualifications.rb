class CreateJoinTableSubjectsQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications_subjects, id: false do |t|
      t.integer :subject_id
      t.integer :qualification_id
    end
 
    add_index :qualifications_subjects, :subject_id
    add_index :qualifications_subjects, :qualification_id
  end
end
