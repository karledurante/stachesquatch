class AddCallbackTable < ActiveRecord::Migration
  def up
    create_table :payment_gateway_callbacks do |t|
      t.string :callback_type  # preapproval, checkout
      t.string :query_params, :limit => 1000

      t.timestamps      
    end
  end

  def down
    drop_table :payment_gateway_callbacks
  end
end
