#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wooer_plugin_version'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_num_decimals'

