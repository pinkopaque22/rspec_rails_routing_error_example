require "spec_helper"

describe PaymentsController do

  describe "GET index" do
    it "should render the default template" do
      get :index
      response.should render_template(:index)
    end
  end

end
