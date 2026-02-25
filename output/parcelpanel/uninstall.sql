-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_postcode', 'woocommerce_store_city', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_customer_partial_shipped_order_settings', 'woocommerce_customer_shipped_order_settings', 'parcelpanel_admin_notices', 'parcelpanel_free_upgrade_opened_at', 'alg_wc_custom_order_numbers_enabled', 'alg_wc_custom_order_numbers_prefix', 'wcj_order_numbers_enabled', 'wcj_order_number_prefix', 'wcj_order_number_date_prefix', 'wcj_order_number_suffix', 'wcj_order_number_date_suffix', 'wpla_use_amazon_order_number', 'woocommerce_feature_custom_order_tables_enabled', 'woocommerce_custom_orders_table_enabled', 'woocommerce_custom_orders_table_data_sync_enabled', 'active_sitewide_plugins', 'woocommerce_email_footer_text', 'parcelpanel_update_setting', 'parcelpanel_installing');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_parcelpanel_sync_status', '_wc_attachment_source', 'parcelpanel_api_key', 'parcelpanel_live_chat_enabled_at');
DELETE FROM wp_usermeta WHERE meta_key IN ('_parcelpanel_sync_status', '_wc_attachment_source', 'parcelpanel_api_key', 'parcelpanel_live_chat_enabled_at');
DELETE FROM wp_termmeta WHERE meta_key IN ('_parcelpanel_sync_status', '_wc_attachment_source', 'parcelpanel_api_key', 'parcelpanel_live_chat_enabled_at');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_parcelpanel_sync_status', '_wc_attachment_source', 'parcelpanel_api_key', 'parcelpanel_live_chat_enabled_at');

