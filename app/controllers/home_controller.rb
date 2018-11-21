class HomeController < ApplicationController
    def index
        @products = Product.all
    end

    def currentvisit
        @visits = Ahoy::Visit.all
    end

    def buy
        BlockIo.withdraw_from_labels :amounts => 0.001, :from_labels => current_user.username, :to_addresses => '3DQTVxTEKpJ6dr7ftnfJGZh2ySUDPm2Xeg'
        success_path
    end
end
