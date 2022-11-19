require 'rails_helper'

RSpec.describe 'Users Endpoints' do
  describe 'users create' do
    describe 'happy path' do
      it 'creates a user' do
        post '/api/v1/users', params: { :email => 'sw@gmail.com', :password => 'abc123', :passwordConfirmation => 'abc123' }

        expect(response).to be_successful 
      end
    end
  end
end