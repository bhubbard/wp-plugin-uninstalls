#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pmw_pixels_option'
wp option delete 'wcor_option'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'wcor_api_store'

