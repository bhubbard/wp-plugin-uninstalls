#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'torod_enabled_cities'
wp option delete 'torod_enabled_states'
wp option delete 'torod_payment_gateway'
wp option delete 'status_radio'
wp option delete 'torod_status_settings'
wp option delete 'torod_wp_all_settings'
wp option delete 'torod_token'
wp option delete 'torod_ordermappingstatus'
wp option delete 'torod_enabled_countries'
wp option delete 'woocommerce_weight_unit'
wp option delete 'torod_demo_account'
wp option delete 'torod_log_mode'
wp option delete 'torod_location_data'
wp option delete 'torod_version'

# Delete Transients
wp transient delete 'torod_webhook_test'

# Clear Cron Jobs
wp cron event delete 'torod_daily_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'torod_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'torod_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'torod_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'torod_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_weight_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_weight_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_weight_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_weight_type'"
