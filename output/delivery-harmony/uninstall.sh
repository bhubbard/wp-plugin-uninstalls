#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'say2eat_token'
wp option delete 'say2eat_delivery_time'
wp option delete 'say2eat_week_days'
wp option delete 'say2eat_pickup_time'
wp option delete 'woocommerce_default_country'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'say2eat_app_id'
wp option delete 'say2eat_plugin_configured'
wp option delete 'say2eat_store_token'
wp option delete 'say2eat_store_config'

