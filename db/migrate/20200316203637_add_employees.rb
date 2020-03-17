class AddEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :active
      t.integer :department_id
    end
  end
end
