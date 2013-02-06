RspecRailsRoutingErrorExample::Application.routes.draw do

  resources :payments, only: [:index] do
    ## This works in the app, but fails in rspec
    resources :payment_policies, only: [:index], controller: "Payments::PaymentPolicies"

    ## Either of these work in rspec and in the app
    # resources :payment_policies, only: [:index], controller: "payments/payment_policies"
    # resources :payment_policies, only: [:index], module: :payments
  end

end
