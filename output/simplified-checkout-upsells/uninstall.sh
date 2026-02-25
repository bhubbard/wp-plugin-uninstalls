#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simplified_checkout_checkout_endpoint'
wp option delete 'simplified_checkout_checkout_live'
wp option delete 'simplified_checkout_license_key'
wp option delete 'simplified_checkout_should_create_keys'
wp option delete 'simplified_checkout_wc_keys_created'
wp option delete 'simplified_checkout_wc_store_url'
wp option delete 'simplified_checkout_wc_consumer_key'
wp option delete 'simplified_checkout_wc_consumer_secret'
wp option delete 'woocommerce_weight_unit'

