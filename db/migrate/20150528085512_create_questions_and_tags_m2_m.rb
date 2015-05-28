class CreateQuestionsAndTagsM2M < ActiveRecord::Migration
  def change
    create_table :questions_tags do |t|
      t.belongs_to :questions, index: true
      t.belongs_to :tags, index: true
    end
  end
end
