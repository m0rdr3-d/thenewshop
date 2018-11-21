class RegistrationsController < Devise::RegistrationsController
    protected
    def after_sign_up_path_for(users)
        a = BlockIo.get_new_address :label => current_user.username
        puts a
        User.find(current_user.id).update_columns(address: a['data']['address'])
        root_path
    end
    
end
