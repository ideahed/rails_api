class User < ActiveRecord::Base
  has_many :notes
  
  validates :first, :last, presence: true
  validates :email, :username, :pw, :devicetoken, presence: true, uniqueness: true
  validates :email, length: { minimum: 8 }
end
