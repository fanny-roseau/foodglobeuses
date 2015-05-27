ActiveAdmin.register Contact do

  index do
    selectable_column
    column :id
    column :name
    column :email
    column :subject
    column :message
    column :answered do |contact| status_tag((contact.answered? ? "answered" : "non-answered"), (contact.answered? ? :ok : :error))
    end
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :answered
    end
    f.actions
  end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

permit_params :name, :email, :subject, :message, :answered



end
