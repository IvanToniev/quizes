class User < ActiveRecord::Base
  validates :email, presence: true
  validates :password, length: {in: 6..30}
  validates :first_name, :last_name, length: {in: 2..50}
end
