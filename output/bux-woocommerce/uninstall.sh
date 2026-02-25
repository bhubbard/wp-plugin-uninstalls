#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_manage_stock'
wp option delete 'bux_payment_client_secret'
wp option delete 'bux_payment_client_id'
wp option delete 'bux_payment_api_key'
wp option delete 'bux_payment_default_expiry'
wp option delete 'bux_redirect_disable'
wp option delete 'bux_test_mode'

