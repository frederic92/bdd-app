require "rails_helper"

RSpec.describe BooksController, type: :controller do

  let(:user) { FactoryBot.create(:user,
                                       email: "tester@testdomain.test",
                                       password: "password") }

  before do
    request.env['devise.mapping'] = Devise.mappings[:user]
    sign_in user
  end

  describe "GET #index" do
    let(:books) { [
      FactoryBot.create(:book, user: user),
      FactoryBot.create(:book, user: user)
    ] }

    before do
      allow(user).to receive(:books).and_return(books)

      get :index
    end

    it "looks up all books that belong to the current user" do
      expect(assigns(:books)).to eq(books)
    end
  end

end
