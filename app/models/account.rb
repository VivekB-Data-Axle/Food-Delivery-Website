class Account < ApplicationRecord
  before_save { self.account_email = account_email.downcase }

  validates :account_name,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 25 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :account_email,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { maximum: 30 },
            format: { with: VALID_EMAIL_REGEX }
  has_secure_password

  validates :role, presence: true
end