class AdvancedCalculatorsExtension < Spree::Extension
  version "1.0"
  description "Set of advanced calculators"
  url "http://github.com/swistak/spree-advanced-calculators/tree/master"

  def activate

    # Add your extension tab to the admin.
    # Requires that you have defined an admin controller:
    # app/controllers/admin/yourextension_controller
    # and that you mapped your admin in config/routes

    [
      Calculator::PriceBucket, 
      Calculator::WeightBucket, 
      Calculator::QuantityBucket
    ].each(&:register)
  end
end
