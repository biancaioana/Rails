class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.date :start_time
      t.date :end_time
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
