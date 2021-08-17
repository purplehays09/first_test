require "rails_helper"

RSpec.describe User, :type => :model do
  subject {
    User.new(
      name: "Joe",
      email: "hey@hey.com",
      phone_number: "8008675309",
    )
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid without an email" do
    subject.email = nil
    expect(subject).to_not be_valid  
  end
  
  it "is valid without phone number" do
    subject.phone_number = nil
    expect(subject).to be_valid 
  end

end
