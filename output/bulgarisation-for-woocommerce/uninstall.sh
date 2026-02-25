#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_bg_boxnow_message_dismiss'
wp option delete 'woocommerce_bacs_accounts'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_enable_shipping_calc'

# Clear Cron Jobs
wp cron event delete 'woo_bg/boxnow/clear_cache_folder'
wp cron event delete 'woo_bg/cvc/clear_cache_folder'
wp cron event delete 'woo_bg/econt/clear_cache_folder'
wp cron event delete 'woo_bg/speedy/clear_cache_folder'
wp cron event delete 'woo_bg/submit_stats'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_vat_number'"
