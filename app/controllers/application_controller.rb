class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        attributes = [:email, :password,:password_confirmation, :username, :address]
        devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
        devise_parameter_sanitizer.permit(:account_update, keys: attributes)
      end

    # def after_sign_up_path_for(users)
    #     a = BlockIo.get_new_address :label => current_user.username
    #     Wallet.find(current_user.id).update_columns(address: a)
    #     redirect_to root_path
    # end
end
