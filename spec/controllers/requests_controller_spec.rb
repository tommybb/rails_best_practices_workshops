require 'spec_helper'


describe RequestsController do
  let(:user) { create(:user) }
  before { sign_in user }

  # This should return the minimal set of attributes required to create a valid
  # Request. As you add validations to Request, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "user_id" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RequestsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "#create" do
    let(:call_request) {post :create, {request: valid_attributes}}

    context "with valid params" do
      it {expect {call_request}.to change{Request.count}.by(1)}
    end
  end

  describe '#destroy' do
    let!(:request){create(:request)}
    it {expect { delete :destroy, {id: request.id} }.to change { Request.count }.by(-1)}
  end
end