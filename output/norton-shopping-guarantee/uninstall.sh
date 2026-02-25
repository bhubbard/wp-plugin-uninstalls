#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nsgpp_plugin_activation_register'
wp option delete 'nsgpp_sn'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'nsgpp_h'
wp option delete 'nsgpp_fee_price'
wp option delete 'nsgpp_merchant_percentage'
wp option delete 'nsgpp_merchant_percent'

