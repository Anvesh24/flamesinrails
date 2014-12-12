class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name1
      t.string :name2
      t.string :result

      t.timestamps null: false
    end
  end
end
