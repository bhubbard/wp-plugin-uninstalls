#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'mbe_shipping_wp_admin_messages'
wp option delete 'mbe_elink_db_version'
wp option delete 'cron'
wp option delete 'mbe_shipping_admin_messages'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_set_options_default' OR option_name LIKE '_site_transient_%_set_options_default'"

# Clear Cron Jobs
wp cron event delete 'closure_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_method_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_method_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_method_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_method_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_mbe_tracking_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_mbe_tracking_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_mbe_tracking_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_mbe_tracking_name'"
