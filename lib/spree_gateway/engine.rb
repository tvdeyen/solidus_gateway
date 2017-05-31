module SpreeGateway
  class Engine < Rails::Engine
    engine_name 'solidus_gateway'

    config.autoload_paths += %W(#{config.root}/lib)

    initializer "spree.gateway.payment_methods", after: "spree.register.payment_methods" do |app|
      app.config.spree.payment_methods << Spree::PaymentMethod::AuthorizeNetCim
      app.config.spree.payment_methods << Spree::PaymentMethod::AuthorizeNet
      app.config.spree.payment_methods << Spree::PaymentMethod::CardSave
      app.config.spree.payment_methods << Spree::PaymentMethod::Eway
      app.config.spree.payment_methods << Spree::PaymentMethod::Linkpoint
      app.config.spree.payment_methods << Spree::PaymentMethod::Moneris
      app.config.spree.payment_methods << Spree::PaymentMethod::PayJunction
      app.config.spree.payment_methods << Spree::PaymentMethod::PayPal
      app.config.spree.payment_methods << Spree::PaymentMethod::SagePay
      app.config.spree.payment_methods << Spree::PaymentMethod::Beanstream
      app.config.spree.payment_methods << Spree::PaymentMethod::BraintreeCreditCard
      app.config.spree.payment_methods << Spree::PaymentMethod::StripeCreditCard
      app.config.spree.payment_methods << Spree::PaymentMethod::Worldpay
      app.config.spree.payment_methods << Spree::PaymentMethod::Banwire
      app.config.spree.payment_methods << Spree::PaymentMethod::UsaEpay
      app.config.spree.payment_methods << Spree::BillingIntegration::Skrill::QuickCheckout
      app.config.spree.payment_methods << Spree::PaymentMethod::BalancedCreditCard
      app.config.spree.payment_methods << Spree::PaymentMethod::DataCash
      app.config.spree.payment_methods << Spree::PaymentMethod::UsaEpay
      app.config.spree.payment_methods << Spree::PaymentMethod::PinCreditCard
      app.config.spree.payment_methods << Spree::PaymentMethod::Paymill
      app.config.spree.payment_methods << Spree::PaymentMethod::PayflowPro
      app.config.spree.payment_methods << Spree::PaymentMethod::SecurePayAU
      app.config.spree.payment_methods << Spree::PaymentMethod::Maxipago
      app.config.spree.payment_methods << Spree::PaymentMethod::Migs
      app.config.spree.payment_methods << Spree::PaymentMethod::SpreedlyCreditCard

      # "Eager load" all old deprecated gateways;
      # otherwise Rails won't correctly initialize them.
      # TODO: Remove eager loading of deprecated gateways once they get removed
      unless app.config.eager_load
        Dir.glob('../../app/models/spree/gateway/*').each do |klass|
          require_relative klass
        end
      end
    end

    # The application_id is a class attribute on all gateways and is used to
    # identify the "source" of the transaction. Braintree has asked us to
    # provide this value to attribute transactions to Solidus; we do not set
    # it on all gateways or the base gateway as other gateways' behavior with
    # the value may differ.
    initializer "spree.gateway.braintree_gateway.application_id" do |app|
      # NOTE: if the braintree gem is not loaded, calling ActiveMerchant::Billing::BraintreeBlueGateway crashes
      # therefore, check here to see if Braintree exists before trying to call it
      if defined?(Braintree)
        ActiveMerchant::Billing::BraintreeBlueGateway.application_id = "Solidus"
      end
    end

    def self.activate
      if SpreeGateway::Engine.frontend_available?
        Rails.application.config.assets.precompile += [
          'lib/assets/javascripts/spree/frontend/solidus_gateway.js',
          'lib/assets/javascripts/spree/frontend/solidus_gateway.css',
        ]
        Dir.glob(File.join(File.dirname(__FILE__), "../../controllers/frontend/*/*_decorator*.rb")) do |c|
          Rails.configuration.cache_classes ? require(c) : load(c)
        end
      end
    end

    def self.backend_available?
      @@backend_available ||= ::Rails::Engine.subclasses.map(&:instance).map{ |e| e.class.to_s }.include?('Spree::Backend::Engine')
    end

    def self.frontend_available?
      @@frontend_available ||= ::Rails::Engine.subclasses.map(&:instance).map{ |e| e.class.to_s }.include?('Spree::Frontend::Engine')
    end

    if self.backend_available?
      paths["app/views"] << "lib/views/backend"
    end

    if self.frontend_available?
      paths["app/controllers"] << "lib/controllers/frontend"
      paths["app/views"] << "lib/views/frontend"
    end

    config.to_prepare &method(:activate).to_proc
  end
end
