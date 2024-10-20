class AccountsController < ApplicationController
  def new
    redirect_to root_path if logged_in?
    @account = Account.new
  end

  def create
    @account = Account.new(params.require(:account).permit(:account_name, :account_email, :password, :role))
    if @account.save
      session[:account_id] = @account.account_id
      flash[:notice] = "Success"
      redirect_to root_path
    else
      flash[:notice] = "Failure"
      flash[:errors] = @account.errors.full_messages
      redirect_to account_path(:new)
    end
  end

  def edit
  end

  def update
  end

  def index
  end

  def show
  end

  def destroy
  end

end