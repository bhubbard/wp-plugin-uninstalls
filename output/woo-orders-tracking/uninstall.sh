#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_orders_tracking_update_data_new_version_1.0.8'
wp option delete 'woo_orders_tracking_settings'
wp option delete 'woocommerce_feature_custom_order_tables_enabled'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_custom_orders_table_data_sync_enabled'
wp option delete 'vi_wot_send_mails_for_import_csv_function_orders'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'vi_woo_orders_tracking_page_track_order'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"

# Delete Transients
wp transient delete 'vi_wot_importer_file'
wp transient delete 'villatheme_call'
wp transient delete 'villatheme_ads'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'

# Clear Cron Jobs
wp cron event delete 'woo_orders_tracking_cron_update_tracking'
wp cron event delete 'vi_wot_importer_scheduled_cleanup'
wp cron event delete 'vi_wot_send_mails_for_import_csv_function'
wp cron event delete 'vi_wot_send_mail_tracking_code'

