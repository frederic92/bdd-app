require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  let(:user) { FactoryBot.create(:user,
                                       email: "tester@testdomain.test",
                                       password: "password") }

  before do
    request.env['devise.mapping'] = Devise.mappings[:user]
    sign_in user
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(200)
    end
  end

end
