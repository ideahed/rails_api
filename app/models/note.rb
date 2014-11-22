class Note < ActiveRecord::Base
  validates :user_id, presence: true
  validates :lat, presence: true 
  validates :lon, presence: true
  validates :note_text, presence:true 
  validates :expiration, presence: true

  belongs_to :owner, foreign_key: 'user_id', class_name: 'User'

  has_and_belongs_to_many :users

  reverse_geocoded_by :lat, :lon
end
