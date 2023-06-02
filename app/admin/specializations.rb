ActiveAdmin.register Specialization do

  permit_params :name

  form html: { multipart: true } do |f|
    f.inputs "Spec" do
      f.input :name
    end

    f.actions
  end
  
end
