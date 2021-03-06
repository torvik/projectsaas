class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :details
      t.date :started_date
      t.date :expected_completion_date
      t.integer :hours
      t.belongs_to :tenant, foreign_key: true

      t.timestamps
    end
  end
end
