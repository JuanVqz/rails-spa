require 'rails_helper'

RSpec.describe AuthorizeApiRequest do
  let(:user) { create :user, password: '123123123' }
  let(:header) do
    { 'Authorization' => token_generator(user.id) }
  end
  subject(:invalid_request) { described_class.new({}) }
  subject(:valid_request) { described_class.new(header) }

  describe ".call" do
    context "when valid request" do
      it "returns user object" do
        result = valid_request.call
        expect(result.to_s).to match(/AuthorizeApiRequest/)
      end
    end # context when valid request

    context "when invalid request" do
      context "when missing token" do
        it "returns missing token message" do
          result = invalid_request.call
          expect(result.errors[:token]).to eq ["Missing token"]
        end
      end # context when missing token

      context "when invalid token" do
        subject(:invalid_request) do
          described_class.new('Authorization' => token_generator(5))
        end

        it "returns invalid token message" do
          result = invalid_request.call
          expect(result.errors[:token]).to eq ["Invalid token"]
        end
      end # context when invalid token
    end # context when invalid request
  end # describe ".call"
end

