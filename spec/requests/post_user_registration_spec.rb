require 'rails_helper'

describe 'post user registration' do
  it 'POSTs a new user to Users table in local database' do
    params = {
      user: {
        first_name: "michael",
        last_name: "marchand",
        email: "michaelDavidMarchand@gmail.com",
        password: "pathword"
      }
    }

    post '/api/v1/users', params: params

    user = User.last

    expect(response).to be_successful
    parsed_response = JSON.parse(response.body, symbolize_names: true)

    expect(parsed_response).to be_a Hash
    expect(parsed_response).to have_key :data
    expect(parsed_response[:data]).to have_key :id
    expect(parsed_response[:data]).to have_key :attributes
    expect(parsed_response[:data][:attributes]).to have_key :first_name
    expect(parsed_response[:data][:attributes]).to have_key :last_name
    expect(parsed_response[:data][:attributes]).to have_key :email
    expect(parsed_response[:data][:attributes][:first_name]).to eq(user.first_name)
    expect(parsed_response[:data][:attributes][:last_name]).to eq(user.last_name)
  end
end