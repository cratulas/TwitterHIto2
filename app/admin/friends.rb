ActiveAdmin.register Friend do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :friend_id, :user_id

  form do |f|
    f.inputs "Friend" do
      f.input :user_id
      f.input :friend_id
    end
    f.actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:friend_id, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
