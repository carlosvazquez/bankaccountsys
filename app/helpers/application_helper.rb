module ApplicationHelper
  def number_of_accounts
    BankAccount.count
  end
  def number_of_clients
    Client.count
  end
  def number_to_money(number)
    if number > 0
      number / 100.00
    else
      0.00
    end
  end
  def money_to_number(money)
    money * 100
  end

end
