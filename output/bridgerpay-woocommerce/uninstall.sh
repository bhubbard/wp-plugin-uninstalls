#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_bridgerpay_gateway_settings'
wp option delete 'woocommerce_bridgerpay_wallet_gateway_settings'
wp option delete 'bridgerpay_gateway_access_token'

