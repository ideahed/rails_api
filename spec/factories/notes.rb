FactoryGirl.define do
  factory :note do
    user_id 1
note_text "MyText"
lat 1.5
lon 1.5
photo_uri "MyString"
expiration Time.zone.now.utc
  end

end
