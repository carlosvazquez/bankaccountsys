class Client < ApplicationRecord
  has_many :bank_accounts

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :middle_name, presence: true
  validates :client_number, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  before_save :format_name

  def format_name
    self.first_name  = self.first_name.upcase
    self.last_name   = self.last_name.upcase
    self.middle_name = self.middle_name.upcase
  end

  def to_s
    "#{last_name}, #{first_name} #{middle_name}"
  end
end
