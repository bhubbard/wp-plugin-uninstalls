#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'corvuspay_settings_version'
wp option delete 'cpsi_gateway'
wp option delete 'woocommerce_cpsi_settings'
wp option delete 'woocommerce_corvuspay_settings'
wp option delete 'woocommerce_price_num_decimals'

