ActiveAdmin.register Patient do

  permit_params :full_name, :patient_card_id

  form html: { multipart: true } do |f|
    f.inputs "patient" do
      f.input :full_name
      f.input :patient_card_id, as: :select, :collection => PatientCart.all
    end

    f.actions
  end
  
end
