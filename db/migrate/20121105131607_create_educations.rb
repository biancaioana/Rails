class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.text :activities
      t.string :degree
      t.date :end_time
      t.string :institution
      t.date :start_time

      t.timestamps
    end
  end
end
