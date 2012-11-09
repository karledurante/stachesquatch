class PaymentGatewayCallback < ActiveRecord::Base
  attr_accessible :callback_type, :query_params
end
