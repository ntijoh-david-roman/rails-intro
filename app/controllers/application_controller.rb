# frozen_string_literal: true

class ApplicationController < ActionController::API
    include Pundit::Authorization

    before_action :authenticate


    private
    def authenticate
        email, pass = ActionController::HttpAuthentication::Basic::user_name_and_password(request)
        @current_user = User.find_by(email: email)
        render(json: {"message": "Unauthorized"}, status: 401) unless @current_user
    end

    def current_user
        @current_user
    end

end
