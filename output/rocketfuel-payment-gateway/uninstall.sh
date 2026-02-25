#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rkfl_partial_payment_cache_%'"
wp option delete 'woocommerce_rocketfuel_gateway_settings'
wp option delete 'woocommerce_custom_orders_table_enabled'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rkfl_suppress_release_%' OR option_name LIKE '_site_transient_rkfl_suppress_release_%'"

# Clear Cron Jobs
wp cron event delete 'rkfl_order_webhook_creation_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rocketfuel_temp_orderid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rocketfuel_temp_orderid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rocketfuel_temp_orderid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rocketfuel_temp_orderid'"
