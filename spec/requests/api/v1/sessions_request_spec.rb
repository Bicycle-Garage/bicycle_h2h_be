require "rails_helper"

RSpec.describe "Sessions Endpoints" do
  describe 'sessions create' do
    describe 'happy path' do
      it 'can log a user in and create a session' do
        user = User.create(email: 'sw@gmail.com', password: 'abc123')

        post '/api/v1/login',
          params: {
            email: 'sw@gmail.com',
            password: 'abc123'
          }

          res = JSON.parse(response.body, symbolize_names: true)
          expect(response).to be_successful
          expect(status).to eq(200)
          expect(res[:status]).to eq('created')
          expect(res[:logged_in]).to eq(true)
          expect(res[:user][:email]).to eq('sw@gmail.com')
      end
    end

    describe "sad path" do
      it "cant log in with an incorrect password" do
        user = User.create(email: "sw@gmail.com", password: "abc123")

        post "/api/v1/login",
            params: {
              email: "sw@gmail.com",
              password: "aac123",
            }
        expect(response.status).to eq(401)
      end

      it "cant log in with an incorrect email" do
        user = User.create(email: "sw@gmail.com", password: "abc123")

        post "/api/v1/login",
            params: {
              email: "sww@gmail.com",
              password: "abc123",
            }
        expect(response.status).to eq(401)
      end
    end
  end
end