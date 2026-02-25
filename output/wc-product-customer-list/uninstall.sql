-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcl_consolidate_rightpress_columns', 'wpcl_order_partial_refunds', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wpcl_export_pdf_pagesize', 'wpcl_export_pdf_orientation', 'wpcl_column_order_index', 'wpcl_column_order_direction', 'wpcl_state_save', 'wpcl_export_pdf_sku', 'wpcl_email_seperator', 'wpcl_order_status_select', 'wpcl_add_admin_shortcut', 'wpcl_order_number', 'wpcl_order_date', 'wpcl_billing_first_name', 'wpcl_billing_last_name', 'wpcl_billing_email', 'wpcl_billing_phone', 'wpcl_billing_address_1', 'wpcl_billing_address_2', 'wpcl_billing_city', 'wpcl_billing_state', 'wpcl_billing_postalcode', 'wpcl_billing_country', 'wpcl_shipping_first_name', 'wpcl_shipping_last_name', 'wpcl_shipping_address_1', 'wpcl_shipping_address_2', 'wpcl_shipping_city', 'wpcl_shipping_state', 'wpcl_shipping_postalcode', 'wpcl_shipping_country', 'wpcl_customer_message', 'wpcl_customer_id', 'wpcl_order_status', 'wpcl_order_payment', 'wpcl_order_qty', 'wpcl_customer_ID', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('label', 'key');
DELETE FROM wp_usermeta WHERE meta_key IN ('label', 'key');
DELETE FROM wp_termmeta WHERE meta_key IN ('label', 'key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('label', 'key');

