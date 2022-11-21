require "rails_helper"

RSpec.describe "Users Endpoints" do
  describe "users create" do
    describe "happy path" do
      it "creates a user" do
        post "/api/v1/users",
             params: {
               email: "sw@gmail.com",
               password: "abc123",
               password_confirmation: "abc123",
             }

        expect(response).to be_successful
      end
    end
    describe "sad path" do
      it "can't create a user with out an email" do
        post "/api/v1/users",
             params: {
               email: "",
               password: "abc123",
               password_confirmation: "abc123",
             }

        expect(response.status).to eq(422)
      end

      it "can't create a user with out a password" do
        post "/api/v1/users",
             params: {
               email: "sw@gmail.com",
               password: "",
               password_confirmation: "abc123",
             }

        expect(response.status).to eq(422)
      end

      it "can't create a user with out a password conf" do
        post "/api/v1/users",
             params: {
               email: "sw@gmail.com",
               password: "abc123",
               password_confirmation: "",
             }

        expect(response.status).to eq(422)
      end

      it "can't create a user with out a matching passwordConf" do
        post "/api/v1/users",
             params: {
               email: "sw@gmail.com",
               password: "abc123",
               password_confirmation: "aac123",
             }

        expect(response.status).to eq(422)
      end
    end
  end

  describe 'users update' do
    describe 'happy path' do
      it 'can update a users ####' do
      end
    end

    describe 'sad path' do
    end
  end

  describe 'users delete action' do
    describe 'happy path' do
    end

    describe 'sad path' do
    end
  end
end
