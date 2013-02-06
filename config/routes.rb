RspecRailsRoutingErrorExample::Application.routes.draw do

  resources :payments, only: [:index] do
    resources :payment_policies, only: [:index], controller: "Payments::PaymentPolicies"
  end

end
