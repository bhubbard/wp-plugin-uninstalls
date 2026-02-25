#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_customer_partial_shipped_order_settings'
wp option delete 'woocommerce_customer_shipped_order_settings'
wp option delete 'parcelpanel_admin_notices'
wp option delete 'parcelpanel_free_upgrade_opened_at'
wp option delete 'alg_wc_custom_order_numbers_enabled'
wp option delete 'alg_wc_custom_order_numbers_prefix'
wp option delete 'wcj_order_numbers_enabled'
wp option delete 'wcj_order_number_prefix'
wp option delete 'wcj_order_number_date_prefix'
wp option delete 'wcj_order_number_suffix'
wp option delete 'wcj_order_number_date_suffix'
wp option delete 'wpla_use_amazon_order_number'
wp option delete 'woocommerce_feature_custom_order_tables_enabled'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_custom_orders_table_data_sync_enabled'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_email_footer_text'

# Delete Transients
wp transient delete 'parcelpanel_update_setting'
wp transient delete 'parcelpanel_installing'

# Clear Cron Jobs
wp cron event delete 'importer_scheduled_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_parcelpanel_sync_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_parcelpanel_sync_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_parcelpanel_sync_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_parcelpanel_sync_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'parcelpanel_api_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'parcelpanel_api_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'parcelpanel_api_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'parcelpanel_api_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'parcelpanel_live_chat_enabled_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'parcelpanel_live_chat_enabled_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'parcelpanel_live_chat_enabled_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'parcelpanel_live_chat_enabled_at'"
