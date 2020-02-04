class CreateSalaries < ActiveRecord::Migration[5.2]
  def change
    create_table :salaries do |t|
      t.integer :salary
      t.references :director, foreign_key: true

      t.timestamps
    end
  end
end
