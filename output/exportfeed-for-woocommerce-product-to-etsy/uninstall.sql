-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('etcpf_etsy_shops', 'etcpf_shop_name', 'ETCPF_RESOLVED', 'etcpf_attribute_user_map_Etsy', 'etcpf_oauth_token', 'etcpf_oauth_refresh_token', 'etcpf_stage', 'etcpf_connected_to_shop', 'etcpf_shop_id', 'currently_uploading_feed_id', 'et_cp_feed_order', 'et_cpf_feed_order_reverse', 'etcpf_login_url', 'etcpf_order_limit', 'etcf_etsy_to_woo_order_sync_left', 'Etsy-etsy-merchant-custom-settings', 'etcpf_licensekey_expired', 'Etsy-etsy-merchant-settings', 'etcpf_update_status', 'etcpf_last_sync_date', 'etcpf_order_limit_reached_mail_sent', 'etcpf_api_key', 'etcpf_secret_key', 'etcpf_imported_to_woocommerce', 'etsy_free_plan_product_import_limit', 'etsy_linked_product_import_count', 'etcpf_order_failed_limit_sent', 'etcpf_currency_code_etsy', 'etcpf_variation_image_linkls', 'et_cp_feed_delay', 'etcpf_shipping_template_id', 'etcpf_db_upgrade_available', 'last_api_hit_timestamp', 'etsy_api_count', 'etcpf_oauth_token_secret', 'etsy_product_upload_count', 'etsy_free_plan_product_upload_limit', 'etcpf_processing_profile_id', 'etcpf_return_policies', 'etcpf_woo_etsy_connector_url', 'etcpf_conversion_api_key', 'etcpf_failed_order_email_sent', 'etcpf_oauth_verfier', 'etcpf_shop_disconnected', 'etcpf_production_partners', 'etcpf_etsy_shop_ids', 'etcpf_secret', 'woocommerce_dimension_unit', 'woocommerce_weight_unit', 'woocommerce_manage_stock');
DELETE FROM wp_options WHERE option_name IN ('woocommerce_hide_out_of_stock_items', 'listing_etsy_et', 'woocommerce_notify_no_stock_amount', 'linked_sku_value_count', 'etcpf_licensekey', 'etcpf_localkey', 'etcpf_db_upgraded', 'etcpf_current_db_version', 'imported_to_woocommerce', 'not_linked_product', 'linked_product_count', 'etcpf_last_table_optimization', 'etcpf_indexes_last_checked', 'et_cp_localkey', 'et_cp_feed_limit', 'et_cp_feed_count', 'etsy_order_offset', 'etcpf_license_message', 'active_sitewide_plugins', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'etcpf_coming_from_product_import', 'etcpf_updating_counts', 'update_plugins', 'etcpf_notification_message', 'etcpf_error_message', 'fs_snooze_period', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'etcpf_shop_sections_%';
DELETE FROM wp_options WHERE option_name LIKE 'etcpf_shop_sections_count_%';
DELETE FROM wp_options WHERE option_name LIKE 'etsy_current_uploading_%';
DELETE FROM wp_options WHERE option_name LIKE 'etcpf_etsyfeedActivity_%';
DELETE FROM wp_options WHERE option_name LIKE 'etsy_variation_on_property_%';
DELETE FROM wp_options WHERE option_name LIKE '%-etsy-merchant-settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_manage_stock', '_stock', '_imported_by_etcpf', '_sku', 'custom_size', 'material', 'brand', 'etcpf_etsy_receipt_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_manage_stock', '_stock', '_imported_by_etcpf', '_sku', 'custom_size', 'material', 'brand', 'etcpf_etsy_receipt_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_manage_stock', '_stock', '_imported_by_etcpf', '_sku', 'custom_size', 'material', 'brand', 'etcpf_etsy_receipt_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_manage_stock', '_stock', '_imported_by_etcpf', '_sku', 'custom_size', 'material', 'brand', 'etcpf_etsy_receipt_id');

