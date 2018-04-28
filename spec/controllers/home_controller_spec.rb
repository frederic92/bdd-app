require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  let(:user) { instance_double(User) }

  before { login_as(user) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(302)
    end
  end

end
