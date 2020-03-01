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
    let(:params) { {session: session_params} }
    let(:session_params) { {email: email, password: password} }

    let(:name) { "name" }
    let(:email) { "email@example.com" }
    let(:password) { "password" }

    context "Positive Condition" do
      before do
        User.create(name: name, email: email, password: password, password_confirmation: password)
      end
      it "receives Status Found" do
        subject
        expect(response).to have_http_status(302)
      end
    end
  end

  describe "DELETE /logout" do
    subject { delete logout_path }

    context "Positive Condition" do
      let(:params) { {session: session_params} }
      let(:session_params) { {email: email, password: password} }
      let(:name) { "name" }
      let(:email) { "email@example.com" }
      let(:password) { "password" }
      before do
        User.create(name: name, email: email, password: password, password_confirmation: password)
        post login_path, params: params
      end
      it "receives Status Found" do
        subject
        expect(response).to have_http_status(302)
      end
    end
  end

end
