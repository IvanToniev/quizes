require 'rails_helper'

RSpec.describe QuizController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to be_success
    end
  end

  describe "GET show" do
    it "returns http success" do
      get :show
      expect(response).to be_success
    end
  end

  describe "GET welcome" do
    it "returns http success" do
      get :welcome
      expect(response).to be_success
    end
  end

  describe "GET goodbye" do
    it "returns http success" do
      get :goodbye
      expect(response).to be_success
    end
  end

  describe "GET statistics" do
    it "returns http success" do
      get :statistics
      expect(response).to be_success
    end
  end

end
