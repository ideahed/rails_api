require 'spec_helper'

describe Note, 'Relations' do
	before :each do
	  @near_note = create(:note)
	  @o_user = create(:user)
	  @user1 = create(:user)
	  @user2 = create(:user)

	  @o_user.notes << @near_note
	  @o_user.save

	  @near_note.users << @user1
	  @near_note.users << @user2
	end

	it 'has two users it was sent to' do
	  expect(@near_note.users.length).to eql(2)
	end

	it 'has only one owner' do
	  expect(@near_note.owner.id).to eql(@o_user.id)
	end

end
