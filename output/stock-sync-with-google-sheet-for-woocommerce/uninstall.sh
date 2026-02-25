#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'ssgsw_multi_vendor_active'
wp option delete 'ssgsw_vendor_menu_name'
wp option delete 'ssgsw_cron_sync_day'
wp option delete 'ssgsw_sync_time'
wp option delete 'ssgsw_vendor_active_instance'
wp option delete 'ssgsw_license_sync'
wp option delete 'ssgsw_hide_upgrade_notice'
wp option delete 'ssgsw_token'
wp option delete 'ssgsw_setup_step'
wp option delete 'ssgsw_new_user_activated_key11'
wp option delete 'ssgsw_already_updated_key11'
wp option delete 'ssgsw_ultimate_license_active'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%spreadsheet_url'"
wp option delete 'ssgsw_version_3_12_sync'
wp option delete 'ssgsw_redirect_to_admin_page'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'ssgsw_synced'
wp option delete 'ssgsw_table_active'
wp option delete 'ssgsw_vendor_setting_options_on'
wp option delete 'ssgsw_table_active_new_columns_new_uniq'
wp option delete 'ssgsw_install_times'
wp option delete 'ssgsw_per_page'
wp option delete 'ssgsw_days_count'
wp option delete 'ssgsw_update_notice'
wp option delete 'wcfm_page_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'default_term_%'"
wp option delete 'wcfm_endpoints'

# Delete Transients
wp transient delete 'ssgsw_flush_rewrite_rules_on_next_load'
wp transient delete 'ssgsw_plugin_activation_message'
wp transient delete 'ssgsw_hide_upgrade_notice'
wp transient delete 'ssgsw_sync_in_progress_state'

# Clear Cron Jobs
wp cron event delete 'ssgsw_process_data_chunk_formula'
wp cron event delete 'ssgsw_schedule_sync_formula'
wp cron event delete 'ssgsw_wc_to_sheet_sync_batch'
wp cron event delete 'ssgsw_process_data_chunk'
wp cron event delete 'ssgsw_schedule_sync_mode'
wp cron event delete 'ssgsw_sales_update'
wp cron event delete 'ssgsw_vendor_product_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ssgsw_vendor_init_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ssgsw_vendor_init_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ssgsw_vendor_init_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ssgsw_vendor_init_done'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_desired_post_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_desired_post_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_desired_post_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_desired_post_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ssgsw_original_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ssgsw_original_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ssgsw_original_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ssgsw_original_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
