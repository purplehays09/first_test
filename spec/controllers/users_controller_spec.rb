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
    it "returns a users name" do
      user = User.create(
        name:"Alphonse",
        email: "Corli@one.com",
        phone_number: "0987656789"
      )
      
      get :show, params: { id: user.id }
      
      expect(response).to be_successful
    end
  end
  
  describe "GET new" do
    it "returns a new blank user" do
      get :new
      expect(response).to be_successful
    end
  end
  
  describe "GET edit" do
    it "returns 200" do
      user = User.create(
        name:"Alphonse",
        email: "Corli@one.com",
        phone_number: "0987656789"
      )
      get :edit, params: {id:user.id}
      
      expect(response).to be_successful
    end
  end
  
  describe "POST create" do
    it "posts a user and returns a sucess" do
      user = {
        name:"Alphonse",
        email: "Corli@one.com",
        phone_number: "0987656789"
      }
      post :create, params: user

      expect(response).to be_successful
    end
  end
  
  
end