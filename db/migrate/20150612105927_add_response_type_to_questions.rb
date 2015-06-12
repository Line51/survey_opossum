class AddResponseTypeToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :response_type, :string
  end
end
