class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: Rails.application.credentials.name, password: Rails.application.credentials.password
end
