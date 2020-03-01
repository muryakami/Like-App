require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    subject { get users_path }

    context "Positive Condition" do
      it "receives Status OK" do
        subject
        expect(response).to have_http_status(200)
      end
    end
  end

  describe "GET /users/:id" do
    subject { get user_path(user) }
    let(:user) { User.create(name: name, email: email, password: password, password_confirmation: password) }

    let(:name) { "name" }
    let(:email) { "email@example.com" }
    let(:password) { "password" }

    context "Positive Condition" do
      it "receives Status OK" do
        subject
        expect(response).to have_http_status(200)
      end
    end
  end

  describe "GET /users/new" do
    subject { get new_user_path }

    context "Positive Condition" do
      it "receives Status OK" do
        subject
        expect(response).to have_http_status(200)
      end
    end
  end

  describe "GET /users/:id/edit" do
    subject { get edit_user_path(user) }
    let(:user) { User.create(name: name, email: email, password: password, password_confirmation: password) }

    let(:name) { "name" }
    let(:email) { "email@example.com" }
    let(:password) { "password" }

    context "Positive Condition" do
      it "receives Status OK" do
        subject
        expect(response).to have_http_status(200)
      end
    end
  end

  describe "POST /users" do
    subject { post users_path, params: params }
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

  describe "PATCH /users/:id" do
    subject { patch user_path(user), params: params }
    let(:user) { User.create(name: name, email: email, password: password, password_confirmation: password) }
    let(:params) { {user: user_params} }
    let(:user_params) { {name: new_name, email: email, password: password, password_confirmation: password} }

    let(:name) { "name" }
    let(:email) { "email@example.com" }
    let(:password) { "password" }

    context "Positive Condition" do
      let(:new_name) { "new_name" }
      it "receives Status Found" do
        subject
        expect(response).to have_http_status(302)
      end
    end
  end

  describe "PUT /users/:id" do
    subject { put user_path(user), params: params }
    let(:user) { User.create(name: name, email: email, password: password, password_confirmation: password) }
    let(:params) { {user: user_params} }
    let(:user_params) { {name: new_name, email: email, password: password, password_confirmation: password} }

    let(:name) { "name" }
    let(:email) { "email@example.com" }
    let(:password) { "password" }

    context "Positive Condition" do
      let(:new_name) { "new_name" }
      it "receives Status Found" do
        subject
        expect(response).to have_http_status(302)
      end
    end
  end

  describe "DELETE /users/:id" do
    subject { delete user_path(user) }
    let(:user) { User.create(name: name, email: email, password: password, password_confirmation: password) }

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

end
