ActiveAdmin.register Klinik do

  permit_params :name, :k_type, :city, :RatingMorality

  form html: { multipart: true } do |f|
    f.inputs "Klinic" do
      f.input :name
      f.input :address
      f.input :founding_date
    end

    f.actions
  end
  
end
