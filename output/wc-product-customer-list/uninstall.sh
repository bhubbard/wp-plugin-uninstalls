#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcl_consolidate_rightpress_columns'
wp option delete 'wpcl_order_partial_refunds'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'wpcl_export_pdf_pagesize'
wp option delete 'wpcl_export_pdf_orientation'
wp option delete 'wpcl_column_order_index'
wp option delete 'wpcl_column_order_direction'
wp option delete 'wpcl_state_save'
wp option delete 'wpcl_export_pdf_sku'
wp option delete 'wpcl_email_seperator'
wp option delete 'wpcl_order_status_select'
wp option delete 'wpcl_add_admin_shortcut'
wp option delete 'wpcl_order_number'
wp option delete 'wpcl_order_date'
wp option delete 'wpcl_billing_first_name'
wp option delete 'wpcl_billing_last_name'
wp option delete 'wpcl_billing_email'
wp option delete 'wpcl_billing_phone'
wp option delete 'wpcl_billing_address_1'
wp option delete 'wpcl_billing_address_2'
wp option delete 'wpcl_billing_city'
wp option delete 'wpcl_billing_state'
wp option delete 'wpcl_billing_postalcode'
wp option delete 'wpcl_billing_country'
wp option delete 'wpcl_shipping_first_name'
wp option delete 'wpcl_shipping_last_name'
wp option delete 'wpcl_shipping_address_1'
wp option delete 'wpcl_shipping_address_2'
wp option delete 'wpcl_shipping_city'
wp option delete 'wpcl_shipping_state'
wp option delete 'wpcl_shipping_postalcode'
wp option delete 'wpcl_shipping_country'
wp option delete 'wpcl_customer_message'
wp option delete 'wpcl_customer_id'
wp option delete 'wpcl_order_status'
wp option delete 'wpcl_order_payment'
wp option delete 'wpcl_order_qty'
wp option delete 'wpcl_customer_ID'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'key'"
