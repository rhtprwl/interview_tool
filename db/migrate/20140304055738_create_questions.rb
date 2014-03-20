class CreateQuestions < ActiveRecord::Migration
  def change
     create_table :questions do |t|
      t.string :category
      t.integer :subcategory_id
      t.integer :question_level
      t.string :question

      t.timestamps
    end
  end
end
