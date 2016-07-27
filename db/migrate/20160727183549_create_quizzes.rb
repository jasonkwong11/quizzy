class CreateQuizzes < ActiveRecord::Migration
  def change
      create_table :quizzes do |t|
      t.string :name
      t.date :date
      t.decimal :average
      t.decimal :score
      t.integer :user_id
    end
  end
end
