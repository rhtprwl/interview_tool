class CreateAddQuestions < ActiveRecord::Migration
  def change
    create_table :add_questions do |t|
      t.integer :category_id
      t.integer :subcategory_id
      t.integer :question_level
      t.string :question

      t.timestamps
    end
  end
end
