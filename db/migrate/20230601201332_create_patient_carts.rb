class CreatePatientCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :patient_carts do |t|
      t.references :klinik
      t.references :doctor

      t.timestamps
    end
  end
end
