#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dhl_do_activation_redirect'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'

# Clear Cron Jobs
wp cron event delete 'create_dhl_order_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tracking_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tracking_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tracking_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tracking_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dhl_order_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dhl_order_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dhl_order_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dhl_order_created'"
