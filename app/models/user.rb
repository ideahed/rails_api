class User < ActiveRecord::Base
  validates :first, :last, presence: true
  validates :email, :username, :pw, :devicetoken, presence: true, uniqueness: true
  validates :email, length: { minimum: 8 }

  # has_many :recipients, through: :notes_users
  has_and_belongs_to_many :notes
  has_many :notes
end
