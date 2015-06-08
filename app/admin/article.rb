ActiveAdmin.register Article do

index do
    selectable_column
    column :id
    column :restaurant
    column :description
    column :description_en
    column :publication
    column :picture1
    column :picture2
    column :picture3
    column :picture4
    column :picture5
    column :created_at
    column :updated_at
    actions
  end

form do |f|
    f.inputs do
      f.input :restaurant
      f.input :description
      f.input :description_en
      f.input :publication
      f.input :picture1
      f.input :picture2
      f.input :picture3
      f.input :picture4
      f.input :picture5
    end
    f.actions
  end

permit_params :restaurant_id, :description, :description_en, :publication, :picture1, :picture2, :picture3, :picture4, :picture5


end


