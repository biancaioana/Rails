class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.text :address
      t.text :description

      t.timestamps
    end
  end
end
