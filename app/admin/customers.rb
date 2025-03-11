ActiveAdmin.register Customer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :full_name, :phone_number, :email_address, :notes
  #
  # or
  #
  # permit_params do
  #   permitted = [:full_name, :phone_number, :email_address, :notes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  ActiveAdmin.register Customer do
    permit_params :full_name, :phone_number, :email_address, :notes
  
    index do
      selectable_column
      id_column
      column :full_name
      column :phone_number
      column :email_address
      column :notes
      column :created_at
      actions
    end
  
    show do
      attributes_table do
        row :full_name
        row :phone_number
        row :email_address
        row :notes
        row :created_at
        row :updated_at
      end
      active_admin_comments
    end
  
    form do |f|
      f.inputs "Customer Details" do
        f.input :full_name
        f.input :phone_number
        f.input :email_address
        f.input :notes
      end
      f.actions
    end
  
    filter :full_name
    filter :phone_number
    filter :email_address
    filter :created_at
  end
  
end
