#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'pwyw_enable_plugin'
wp option delete 'pwyw_allow_own_price'
wp option delete 'pwyw_add_to_cart_btn_inside_loop'
wp option delete 'pwyw_products_area'
wp option delete 'pwyw_price_group'
wp option delete 'pwyw_product_categories'
wp option delete 'pwyw_price_fraction'
wp option delete 'pwyw_min_price'
wp option delete 'pwyw_price_text'
wp option delete 'pwyw_predefined_price_set'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pwyw-single-price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pwyw-single-price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pwyw-single-price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pwyw-single-price'"
