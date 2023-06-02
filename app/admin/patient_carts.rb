ActiveAdmin.register PatientCart do

  permit_params :klinik_id, :doctor_id



  form html: { multipart: true } do |f|
    f.inputs "P_card" do
      f.input :klinik_id, as: :select, :collection => Klinik.all
      f.input :doctor_id, as: :select, :collection => Doctor.all
    end

    f.actions
  end

end
