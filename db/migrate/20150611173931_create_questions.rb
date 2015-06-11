class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :survey_id
      t.string :text
      t.boolean :required
      t.integer :number

      t.timestamps null: false
    end
  end
end
