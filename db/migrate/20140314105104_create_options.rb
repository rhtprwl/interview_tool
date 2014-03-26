class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.integer  :question_id
      t.string   :option
      t.integer  :answer 
      t.timestamps
    end
  end
end
