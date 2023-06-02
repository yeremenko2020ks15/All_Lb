ActiveAdmin.register Doctor do

  permit_params :name, :specialization_id, :image

  show do
    attributes_table do
      row :name
      row :specialization
      row :image do
        div do
          image_tag url_for(doctor.image), size: "50x70"
        end
      end
    end
  end

  form html: { multipart: true } do |f|

    f.inputs "Doctor" do
      f.input :name
      f.input :specialization_id, as: :select, :collection => Specialization.all
      f.input :image, as: :file, input_html: { multiple: false }
    end

    f.actions
  end

end
