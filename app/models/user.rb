class User < ActiveRecord::Base
  validates :first, :last, presence: true
  validates :email, :username, :pw, :devicetoken, presence: true, uniqueness: true
  validates :email, length: { minimum: 8 }

  has_many :notes
end
