class CreatePredictions < ActiveRecord::Migration[5.2]
  def change
    create_table :predictions do |t|
      t.string :gamePk
      t.references :user, foreign_key: true
      t.string :expected_winner

      t.timestamps
    end
  end
end
