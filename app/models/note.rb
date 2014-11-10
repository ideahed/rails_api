class Note < ActiveRecord::Base
  validates :user_id, presence: true
  validates :note_text, presence:true 
  validates :lat, presence: true 
  validates :lon, presence: true
  validates :expiration, presence: true

  # belongs_to :user, foreign_key: 'user_id', class_name: 'User'
end
