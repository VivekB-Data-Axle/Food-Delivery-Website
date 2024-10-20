class ApplicationController < ActionController::Base
  helper_method :current_acount, :logged_in?
  def current_account
    @current_account ||= Account.find(session[:account_id]) if session[:account_id]
  end

  def logged_in?
    !!current_account
  end
end