class ApplicationController < ActionController::Base
    before_action :authenticate_admin!
    include Pagy::Backend
end
