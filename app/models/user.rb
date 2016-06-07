class User < ActiveRecord::Base
  before_save { |user| user.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format:  { with: VALID_EMAIL_REGEX },
    uniqueness: true
  validates :usertype, presence: true, inclusion: { in: [1, 2] }
  validates :phone, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

end

# dentists have a :type = 1, consultants with :type = 2
