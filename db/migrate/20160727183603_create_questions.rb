class CreateQuestions < ActiveRecord::Migration
  def change
      create_table :questions do |t|
      t.string :text
      t.string :answer
      t.boolean :correct
      t.integer :quiz_id
      t.string :choice1
      t.string :choice2
      t.string :choice3
      t.string :choice4
      t.string :choice5
    end
  end
end
