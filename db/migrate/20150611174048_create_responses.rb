class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :form_id
      t.string :answer
      t.integer :question_id

      t.timestamps null: false
    end
  end
end
