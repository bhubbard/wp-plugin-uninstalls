#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_finix_gateway_settings'
wp option delete 'woocommerce_default_country'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_finix_apple_pay_gateway_settings'
wp option delete 'woocommerce_finix_google_pay_gateway_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_payments_secret_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_payments_webhooks_secret_key'"

