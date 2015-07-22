class CreateQuestionsTags < ActiveRecord::Migration
  def change
    create_table :questions_tags do |t|

      t.timestamps null: false
    end
  end
end
