class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :description
      t.integer :author_id

      t.timestamps null: false
    end
  end
end
