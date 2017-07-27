require 'rails_helper'

RSpec.describe RfqsController, type: :controller do
  describe "rfqs#new action" do
    it "should successfully show the page" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

   describe "rfqs#create action" do
    it "should create a rfq request" do
      # post :create, params: { rfq: { 
      #   name: "Jon Doe", 
      #   email:'fakeuser@gmail.com',
      #   phone_number: '555-123-4567'
      #   } 
      # }
      # expect(response).to redirect_to menu_path

      # rfq = Rfq.last
      # expect(rfq.name).to eq('Jon Doe')
      
    end      
  end
  
end