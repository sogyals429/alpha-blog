class User < ApplicationRecord
  has_many :articles, dependent: :destroy
  before_save {self.email = email.downcase}
  validates :username, presence: true, uniqueness: { case_sensitive: false },
                       length: { minimum: 3, maximum: 25 }
  VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email,uniqueness:{case_sensitive: false},
            format: { with: VALID_EMAIL_REGEX },
            presence: true

  has_secure_password
end
