class CreateKliniks < ActiveRecord::Migration[6.1]
  def change
    create_table :kliniks do |t|
      t.string :name
      t.string :address
      t.date :founding_date

      t.timestamps
    end
  end
end
