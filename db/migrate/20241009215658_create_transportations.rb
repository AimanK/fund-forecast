class CreateTransportations < ActiveRecord::Migration[7.2]
  def change
    create_table :transportations do |t|
      t.float :gasoline
      t.float :maintenance
      t.references :budget, null: false, foreign_key: true

      t.timestamps
    end
  end
end
