class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :type
      t.timestamps null: false
    end
  end
end
