#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'retailers_management_settings'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_num_decimals'

