class BankAccountsController < ApplicationController
  def index
    @bank_accounts = BankAccount.all
  end
  def show
    @bank_account = BankAccount.find(params[:id])
  end
  def new
    @bank_account = BankAccount.new
  end
  def create
    @bank_account = BankAccount.new(bank_account_params)
    if @bank_account.save
      redirect_to bank_account_path(@bank_account.id)
    else
      render 'new'
    end
  end
  def edit
  end
  def update
  end
  def destroy
  end

  private
  def bank_account_params
    params.require(:bank_account).permit(:client_id)
  end
end
