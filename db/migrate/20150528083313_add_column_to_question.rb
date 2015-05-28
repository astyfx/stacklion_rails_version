class AddColumnToQuestion < ActiveRecord::Migration
  def change
    change_table :questions do |t|
      t.integer :view_count
    end
  end
end
