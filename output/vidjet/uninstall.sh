#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_currency'
wp option delete 'ql_woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_enable_ajax_add_to_cart'

# Clear Cron Jobs
wp cron event delete 'vidjet_daily_events'

