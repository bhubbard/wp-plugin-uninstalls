#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'revolut_pay_synchronous_webhook_domain_live_signing_key'
wp option delete 'revolut_pay_synchronous_webhook_domain_sandbox_signing_key'
wp option delete 'sandbox_revolut_webhook_domain_signing_secret'
wp option delete 'live_revolut_webhook_domain_signing_secret'
wp option delete 'WC_GATEWAY_REVOLUT_VERSION'
wp option delete 'woocommerce_revolut_cc_settings'
wp option delete 'woocommerce_revolut_pay_settings'
wp option delete 'woocommerce_revolut_payment_request_settings'
wp option delete 'woocommerce_revolut_pay_by_bank_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_revolut_webhook_domain'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_revolut_webhook_domain_signing_secret'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_location_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_signing_key'"
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'

