require 'rails_helper'

RSpec.describe Micropost do
  let(:user) do 
    User.create(
      name: "Joe",
      email: "hey@hey.com",
      phone_number:"1234567890"
    )
  end
  subject do
    Micropost.new(
      content: "She should have died here after",
      user_id: user.id
    )
  end

  it "is valid with valid attributes" do
    expect(subject).to be_valid 
  end

  it "is not valid without a user id" do
    subject.user_id = nil
    expect(subject).to_not be_valid 
  end
  
  it "is not valid with more than 140 characters " do
    subject.content += 'there would have been time for such a word tomorrow and tomorrow and tomorrow creeps out lifes petty pace from day to day'

    expect(subject).to_not be_valid 
  end
  
end