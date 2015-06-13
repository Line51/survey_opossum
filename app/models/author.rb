class Author < ActiveRecord::Base
  has_secure_password

  has_many :surveys, dependent: :destroy

  validates :email, presence: true
  validates :password, presence: true

end
