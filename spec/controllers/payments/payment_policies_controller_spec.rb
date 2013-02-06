require "spec_helper"

describe Payments::PaymentPoliciesController do

  describe "GET index" do
    it "should render the default template" do
      get :index, payment_id: 314
      response.should render_template(:index)
    end
  end

end
