class CreateQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications do |t|
      t.string :uuid
      t.string :name
      t.text :link

      t.timestamps null: false
    end

    add_index :qualifications, [:uuid, :name]
  end
end
