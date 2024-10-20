class SessionsController < ApplicationController
  def new
    redirect_to root_path if logged_in?
  end

  def create
    account = Account.find_by(account_email: params[:session][:account_email].downcase)
    
    if account && account.authenticate(params[:session][:password])
      session[:account_id] = account.account_id
      flash[:notice] = "Login Successful"
      redirect_to root_path
    else
      !account ? flash.now[:notice] = "Enter Correct Email Address" : flash.now[:notice] = "Wrong Password"
      render "new", status: :unprocessable_entity
    end
  end
  
  def destroy
    session[:account_id] = nil
    flash[:notice] = "Logged Out Successfuly"
    redirect_to login_path
  end 
end