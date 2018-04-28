require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  let(:user) { FactoryBot.create(:user,
                                       email: "tester@testdomain.test",
                                       password: "password") }


  describe "GET #index" do
    context "when the user is not signed in" do
      it "redirect_to the login page" do
        get :index
        expect(response).not_to render_template(:index)
      end
    end

    context "when the user is signed in" do

      before do
        request.env['devise.mapping'] = Devise.mappings[:user]
        sign_in user
      end

      it "returns http success" do
        get :index
        expect(response).to have_http_status(200)
      end
    end

  end

end
