require 'rails_helper'

RSpec.describe BbqController, type: :controller do

  describe "bbqs#index action" do
    it "should successfully show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "bbqs#about action" do
  it "should successfully show the page" do
    get :about
    expect(response).to have_http_status(:success)
    end
  end

  describe "bbqs#menu action" do
  it "should successfully show the page" do
    get :menu
    expect(response).to have_http_status(:success)
    end
  end

  describe "bbqs#contact action" do
  it "should successfully show the page" do
    get :contact
    expect(response).to have_http_status(:success)
    end
  end
end