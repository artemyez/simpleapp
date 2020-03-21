class ApplicationController < ActionController::Base
    before_action :authenticate_admin!
    include Pagy::Backend
    add_flash_types :danger
end
