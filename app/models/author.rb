class Author < ActiveRecord::Base
  has_secure_password

  has_many :surveys

end
