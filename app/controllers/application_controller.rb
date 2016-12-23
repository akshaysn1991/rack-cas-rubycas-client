class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :check_login

  private

  def check_login
    render status: :unauthorized unless session['cas'] && session['cas']['user']
  end
end
