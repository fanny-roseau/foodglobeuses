ActiveAdmin.register Restaurant do

index do
    selectable_column
    column :id
    column :name
    column :city
    column :mood
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
      f.input :city, as: :select, collection: ["Amsterdam", "Barcelone", "Berlin", "Cap-ferret", "Hanoi", "Jérusalem", "Lisbonne", "Londres", "Los Angeles", "Marrakech", "Miami", "Montreal", "New-York", "Nouvelle-Orléans" "Paris", "Piana", "San Francisco", "Tel-aviv", "Hawaii Islands"]
      f.input :mood, as: :select, collection: ["brunch", "lunch on the go", "business lunch", "tea time", "apero", "tapas", "trendy casual dinner", "classy dinner", "where to take my date for dinner?"]
      f.input :picture
      f.input :address
      f.input :opening_hours
      f.input :phone
    end
    f.actions
  end

permit_params :name, :city, :mood, :address, :opening_hours, :phone, :picture


end
