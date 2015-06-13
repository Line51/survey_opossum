class CreateAnswerChoices < ActiveRecord::Migration
  def change
    create_table :answer_choices do |t|
      t.integer :question_id
      t.string :content

      t.timestamps null: false
    end
  end
end
