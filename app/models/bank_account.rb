class BankAccount < ApplicationRecord
  belongs_to :client
  has_many :account_transactions
  validates :client, presence: true
  validates :balance, presence: true, numericality: true
  before_create :generate_bank_account_number, unless: :account_number?

  before_validation :load_defaults

  def load_defaults
    if self.new_record?
      self.balance = 0
    end
  end

  def to_s
    account_number
  end

  private

  def generate_bank_account_number
    self.account_number = Uuid::GeneratorNumber.get_number(self.class.count)
  end
end
