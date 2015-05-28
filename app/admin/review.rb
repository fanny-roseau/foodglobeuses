ActiveAdmin.register Review do

  index do
      selectable_column
      column :id
      column :restaurant
      column :name
      column :email
      column :website
      column :comment
      column :published do |review|
        if review.published == "Published"
            status_tag('Published', :ok)
        elsif review.published == "pending"
          status_tag('Pending', :warn)
        elsif review.published == "Refused"
          status_tag('Refused', :error)
        end
      end
      column :created_at
      column :updated_at
      actions
    end

    form do |f|
      f.inputs do
        f.input :published, as: :select, collection: ["Published", "Refused", "Pending"]
      end
      f.actions
    end

  permit_params :name, :email, :website, :comment, :published


end
