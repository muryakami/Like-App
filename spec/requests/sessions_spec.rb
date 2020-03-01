require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "GET /login" do
    subject { get login_path }

    context "Positive Condition" do
      it "receives Status OK" do
        subject
        expect(response).to have_http_status(200)
      end
    end
  end

  describe "POST /login" do
    subject { post login_path, params: params }
    let(:params) { {user: user_params} }
    let(:user_params) { {name: name, email: email, password: password, password_confirmation: password} }

    let(:name) { "name" }
    let(:email) { "email@example.com" }
    let(:password) { "password" }

    context "Positive Condition" do
      it "receives Status Found" do
        subject
        expect(response).to have_http_status(302)
      end
    end
  end

  describe "DELETE /logout" do
    subject { delete logout_path }

    context "Positive Condition" do
      it "receives Status Found" do
        subject
        expect(response).to have_http_status(302)
      end
    end
  end

end
