class AddStatusToPredictions < ActiveRecord::Migration[5.2]
  def change
    add_column :predictions, :status, :string, default: nil
  end
end
