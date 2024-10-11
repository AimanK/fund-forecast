class CreateInsurances < ActiveRecord::Migration[7.2]
  def change
    create_table :insurances do |t|
      t.float :health_insurance
      t.float :life_insurance
      t.float :car_insurance
      t.float :home_insurance
      t.float :identity_insurance
      t.references :budget, null: false, foreign_key: true

      t.timestamps
    end
  end
end
