#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc4bp_pages_options'
wp option delete 'wc4bp_options'
wp option delete 'wc4bp_options_delete'
wp option delete 'wc4bp_options_notifications'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'bp-pages'
wp option delete 'wc4bp_options_sync'
wp option delete 'wc4bp_options_pages'
wp option delete 'wc4bp_installed'
wp option delete 'woocommerce_default_country'
wp option delete 'wc4bp_installed_date'
wp option delete 'wc4bp_shipping_address_ids'
wp option delete 'wc4bp_billing_address_ids'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'recently_activated'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'woocommerce_myaccount_orders_endpoint'
wp option delete 'woocommerce_myaccount_downloads_endpoint'
wp option delete 'woocommerce_myaccount_edit_address_endpoint'
wp option delete 'woocommerce_myaccount_payment_methods_endpoint'
wp option delete 'woocommerce_myaccount_edit_account_endpoint'
wp option delete 'wc4bp_upgrade'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'fs_snooze_period'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc4bp-review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc4bp-review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc4bp-review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc4bp-review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc4bp-review-later'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc4bp-review-later'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc4bp-review-later'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc4bp-review-later'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wc4bp_tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wc4bp_tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wc4bp_tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wc4bp_tgmpa_dismissed_notice_%'"
