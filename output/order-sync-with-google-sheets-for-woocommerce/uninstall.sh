#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'osgsw_license_sync'
wp option delete 'osgsw_column_preferences'
wp option delete 'osgsw_column_preferences_updated'
wp option delete 'osgsw_license_active'
wp option delete 'osgsw_already_update'
wp option delete 'osgsw_new_user_activate'
wp option delete 'osgsw_update_flag'
wp option delete 'osgsw_spreadsheet_url'
wp option delete 'osgsw_new_user_activate_bulk'
wp option delete 'osgsw_new_user_activate_trigger_1_11_9'
wp option delete 'ssgsw_prev_status'
wp option delete 'osgsw_setup_step'
wp option delete 'osgsw_already_update_bulk'
wp option delete 'osgsw_already_update_trigger_1_11_9'
wp option delete 'ossgs_first_time_action'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'osgsw_free_active'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sync_total_items'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sync_total_price'"
wp option delete 'osgsw_install_times'
wp option delete 'osgsw_update_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%product_sku_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sync_order_products'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sync_order_status'"
wp option delete 'osgsw_batch_sheet_headers_cache'
wp option delete 'osgsw_batch_original_headers_cache'
wp option delete 'osgsw_batch_cache_timestamp'
wp option delete 'osgsw_multiple_itmes'
wp option delete 'osgsw_show_product_qt'
wp option delete 'osgsw_sync_total_items'
wp option delete 'osgsw_product_sku_sync'
wp option delete 'osgsw_sync_total_price'
wp option delete 'osgsw_bulk_edit_option2'
wp option delete 'ssgsw_show_product_status'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
