class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def can_administer?
      current_user.try(:admin?)
    end
end
