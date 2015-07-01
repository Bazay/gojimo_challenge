class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :uuid
      t.string :title
      t.text :link
      t.string :color

      t.timestamps null: false
    end

    add_index :subjects, [:uuid, :title]
  end
end
