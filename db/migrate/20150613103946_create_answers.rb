class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :title
      t.text :content
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end


    change_table :questions do |t|
      t.integer :answer_count
      t.integer :vote_count
    end
  end
end
