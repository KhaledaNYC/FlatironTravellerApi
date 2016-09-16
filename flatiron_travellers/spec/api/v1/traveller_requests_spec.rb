require 'rails_helper'

describe "Travellers API" do
  describe "get /travellers" do
    it 'returns a JSON collection of all of the travellers' do
      Traveller.create(name: 'Andrew', origin: "Lawn Guyland")
      Traveller.create(name: 'Colby', origin: "Chicago")
      get '/api/v1/travellers'
      response_body = JSON.parse(response.body)
      expect(response).to be_success
      expect(response_body.length).to eq(2)
      binding.pry
      expect(response_body.first["cities"]).to eq([])
    end
  end

  describe 'get /travellers/1' do
    it 'returns a JSON object describing the first traveller' do
      traveller = Traveller.create(name: 'Jason', origin: 'New Yourk')
      get '/api/v1/travellers/1'
      response_body = JSON.parse(response.body)
      expect(response).to be_success
      expect(response_body["name"]).to eq(traveller.name)
    end
  end
  #
  # describe 'post /travellers' do
  #   context 'when valid' do
  #     it 'creates a new traveller' do
  #       post '/api/v1/travellers', {traveller: {name: "Mimi", breed: "pixie bob", temperament: "wild",
  #         weight: 7}}
  #       traveller = Traveller.first
  #       response_body = JSON.parse(response.body)
  #       expect(response).to be_success
  #       expect(Traveller.count).to eq(1)
  #       expect(traveller.name).to eq("Mimi")
  #       expect(traveller.breed).to eq("pixie bob")
  #       expect(traveller.temperament).to eq("wild")
  #       expect(traveller.weight).to eq(7)
  #       expect(traveller.fluffy).to eq(false)
  #       expect(response_body["name"]).to eq("Mimi")
  #     end
  #   end
  #
  #   context 'when invalid' do
  #     it 'returns an error status and message' do
  #      post '/api/v1/travellers', {traveller: {breed: "pixie bob", temperament: "wild",
  #         weight: 7}}
  #       response_body = JSON.parse(response.body)
  #       expect(response.status).to eq(500)
  #       expect(response_body).to eq({"name" => ["can't be blank"]})
  #     end
  #   end
  # end
  #
  # describe 'patch /travellers/:id' do
  #   context 'is valid' do
  #     it 'updates the traveller' do
  #       Traveller.create(name: 'Maru', weight: 12, temperament: 'curious')
  #       patch '/api/v1/travellers/1', {traveller: {breed: "scottish fold",
  #         weight: 13}}
  #       traveller = Traveller.first
  #       expect(response).to be_success
  #       expect(traveller.name).to eq("Maru")
  #       expect(traveller.breed).to eq("scottish fold")
  #       expect(traveller.weight).to eq(13)
  #     end
  #   end
  #
  #   context 'is not valid' do
  #     it 'returns an error status and message' do
  #       Traveller.create(name: 'Maru', weight: 12, temperament: 'curious')
  #       patch '/api/v1/travellers/1', {traveller: {name: nil, breed: "scottish fold",
  #         weight: 13}}
  #         expect(response.status).to eq(500)
  #         expect(JSON.parse(response.body)).to eq({"name" => ["can't be blank"]})
  #     end
  #   end
  # end
  #
  # describe "destroy '/travellers/:id'" do
  #   context 'it exists' do
  #     it 'destroys the traveller record' do
  #       Traveller.create(name: 'Maru', weight: 12, temperament: 'curious')
  #       delete '/api/v1/travellers/1'
  #       expect(response).to be_success
  #       expect(Traveller.count).to eq(0)
  #     end
  #   end
  #
  #   context 'it does not exist' do
  #     it 'return an error message and a 404 status' do
  #       delete '/api/v1/travellers/1'
  #       expect(response.status).to eq(404)
  #       expect(JSON.parse(response.body)).to eq({"error" => "traveller with id of 1 not found"})
  #     end
  #   end
  # end
end
