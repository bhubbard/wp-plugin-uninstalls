-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sibro_product_sync_enable_logs', 'sibro_product_sync_auto_sync', 'sibro_product_sync_api_key', 'sibro_product_sync_filter_categories', 'sibro_product_sync_reseller_discount_type', 'sibro_product_sync_reseller_discount_value', 'sibro_product_sync_apply_discount_to', 'sibro_product_sync_filter_product_status', 'sibro_product_sync_sync_on_order', 'sibro_product_sync_sync_on_stock_change', 'sibro_product_sync_show_sync_on_product_page', 'sibro_last_sync_time', 'sibro_product_sync_api_endpoint', 'sibro_product_sync_needs_configuration', 'sibro_collections_mapped', 'sibro_category_counter_synced', 'sibrox_fallback_logs', 'sibro_product_sync_config_notice_dismissed', 'sibro_product_sync_sync_notice_dismissed', 'sibro_product_sync_db_version');
DELETE FROM wp_options WHERE option_name LIKE 'sibro_product_sync_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_sibro_sync_enabled', '_sibro_discount_override', '_sibro_discount_value_override', '_sibro_last_sync');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_sibro_sync_enabled', '_sibro_discount_override', '_sibro_discount_value_override', '_sibro_last_sync');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_sibro_sync_enabled', '_sibro_discount_override', '_sibro_discount_value_override', '_sibro_last_sync');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_sibro_sync_enabled', '_sibro_discount_override', '_sibro_discount_value_override', '_sibro_last_sync');

