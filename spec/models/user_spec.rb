require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(name: name, email: email, password: password, password_confirmation: password) }
  let(:name) { "name" }
  let(:email) { "email@example.com" }
  let(:password) { "password" }

  describe '#valid?' do
    subject { user.valid? }

    context 'positive condition' do
      it { is_expected.to eq true }
    end

    context 'name is blank' do
      let(:name) { "" }
      it { is_expected.to eq false }
    end

    context 'name is too long' do
      let(:name) { "a" * 51 }
      it { is_expected.to eq false }
    end

    context 'email is blank' do
      let(:email) { "" }
      it { is_expected.to eq false }
    end

    context 'email is too long' do
      let(:email) { "a" * 244 + "@example.com" }
      it { is_expected.to eq false }
    end

    context 'email is invalid addresses' do
      let(:invalid_addresses) { %w[user@example,com user_at_foo.org user.name@example. foo@bar_baz.com foo@bar+baz.com] }
      it 'is_expected.to eq false' do
        invalid_addresses.each do |invalid_address|
          user.email = invalid_address
          expect(subject).to eq false
        end
      end
    end

    context 'email is not unique' do
      before do
        duplicate_user = user.dup
        duplicate_user.email = user.email.upcase
        duplicate_user.save
      end
      it { is_expected.to eq false }
    end

    context 'password is blank' do
      let(:password) { " " * 6 }
      it { is_expected.to eq false }
    end

    context 'password is too short' do
      let(:password) { "a" * 5 }
      it { is_expected.to eq false }
    end
  end

  describe '#before_save' do
    context 'email is not lower-case' do
      subject { user.email }
      let(:mixed_case_email) { "Foo@ExAMPle.CoM" }
      before do
        user.email = mixed_case_email
        user.save
      end
      it { is_expected.to eq mixed_case_email.downcase }
    end
  end
end
