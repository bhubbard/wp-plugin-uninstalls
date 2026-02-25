#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'ccpeaw_version'
wp option delete 'eaw_version'
wp option delete 'eaw_install_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eaw_attr_type_%'"
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_enable_checkout_login_reminder'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'wc_attribute_taxonomies'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_video_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_video_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_video_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_video_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccpeaw_wishlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccpeaw_wishlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccpeaw_wishlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccpeaw_wishlist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'th_custom_attribute_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'th_custom_attribute_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'th_custom_attribute_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'th_custom_attribute_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccpeaw_saved_carts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccpeaw_saved_carts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccpeaw_saved_carts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccpeaw_saved_carts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'product_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'product_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'product_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'product_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eaw_term_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eaw_term_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eaw_term_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eaw_term_value'"
