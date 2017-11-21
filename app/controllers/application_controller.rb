class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    # Force users to login before doing anything.
    before_action :authenticate_user!

end
