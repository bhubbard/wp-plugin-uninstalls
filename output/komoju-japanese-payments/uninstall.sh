#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ship_to_destination'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'komoju_woocommerce_%'"
wp option delete 'woocommerce_komoju_settings'
wp option delete 'komoju_woocommerce_payment_types'
wp option delete 'komoju_woocommerce_just_connected_merchant_name'
wp option delete 'komoju_woocommerce_nonce'
wp option delete 'komoju_woocommerce_secret_key'
wp option delete 'woocommerce_komoju_linepay_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'komoju_woocommerce_payment_methods'
wp option delete 'woocommerce_test_komoju_settings'
wp option delete 'komoju_woocommerce_publishable_key'
wp option delete 'komoju_woocommerce_webhook_secret'
wp option delete 'komoju_woocommerce_ipn_async'
wp option delete 'komoju_woocommerce_fields_url'
wp option delete 'komoju_woocommerce_api_endpoint'
wp option delete 'komoju_woocommerce_waf_staging_token'
wp option delete 'komoju_woocommerce_invoice_prefix'
wp option delete 'komoju_woocommerce_debug_log'

