class AddOptionsToAddQuestions < ActiveRecord::Migration
  def change
    add_column :add_questions, :option1, :string
    add_column :add_questions, :option2, :string
    add_column :add_questions, :option3, :string
    add_column :add_questions, :option4, :string
    add_column :add_questions, :answer, :string
  end
end
