ActiveAdmin.register Restaurant do

index do
    selectable_column
    column :id
    column :name
    column :city
    column :picture
    column :address
    column :opening_hours
    column :phone
    column :longitude
    column :latitude
    column :created_at
    column :updated_at
    actions
  end

form do |f|
    f.inputs do
      f.input :name
      f.input :city, as: :select, collection: ["Amsterdam", "Barcelone", "Berlin", "Cap-ferret", "Hanoi", "Jérusalem", "Lisbonne", "Londres", "Los Angeles", "Marrakech", "Montreal", "New-York", "Paris", "Piana", "Tel-aviv"]
      f.input :picture
      f.input :address
      f.input :opening_hours
      f.input :phone
    end
    f.actions
  end

permit_params :name, :city, :address, :opening_hours, :phone, :picture


end
