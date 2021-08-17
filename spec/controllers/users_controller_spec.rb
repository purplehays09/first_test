require 'rails_helper'

RSpec.describe UsersController do
   

  describe "GET index" do
    it "returns users" do
      users = [User.create(
        name:"Alphonse",
        email: "Corli@one.com",
        phone_number: "0987656789"
      )]

      get :index

      expect(assigns(:users)).to eq(users)
    end
  end

  describe "GET show" do
    it "returns 200" do
      User.create(
        name:"Alphonse",
        email: "Corli@one.com",
        phone_number: "0987656789"
      )

      get 'users/1'

      expect(response.name).to eq("Alphonse")
    end
    
  end
end