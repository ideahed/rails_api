FactoryGirl.define do
  factory :note do
    user_id 1
    lat 1.5
    lon 1.5
    note_text "MyString"
    photo_uri "MyString"
    expiration Time.zone.now.utc
  end

end
