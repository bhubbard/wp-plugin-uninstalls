-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_ACTIONWEAR_SUPPLIER_AVAILABILITY', '_ACTIONWEAR_LAST_RESYNCED_PRODUCTS', '_ACTIONWEAR_PRODUCTS_LANG', '_ACTIONWEAR_HUB_JWT', '_ACTIONWEAR_APIKEY', '_ACTIONWEAR_SELECTED_TAXONOMIES', '_ACTIONWEAR_DEFAULT_CATEGORY_ID', '_ACTIONWEAR_IS_PRICE_SYNC_DISABLED', '_ACTIONWEAR_RECHARGE_TYPE_SELECTED', '_ACTIONWEAR_ARE_RECHARGE_TABLES_DISABLED', '_ACTIONWEAR_USE_CONFIGURABLE', '_ACTIONWEAR_API_ERROR', '_ACTIONWEAR_LIST_TYPE_SELECTED', '_ACTIONWEAR_CRONJOB_FROZEN', '_ACTIONWEAR_DEBUG_MODE', '_ACTIONWEAR_LAST_RECHARGES_RESET', '_ACTIONWEAR_LAST_RESET_SETTINGS', '_ACTIONWEAR_INITIAL_SYNC_PROGRESS', '_ACTIONWEAR_ONBOARDING', '_ACTIONWEAR_LOCK', '_ACTIONWEAR_IMAGES_CUSTOMIZATION', '_ACTIONWEAR_SUPPLIER_TYPE', '_ACTIONWEAR_DB_VERSION', '_ACTIONWEAR_DB_UPGRADE_TEST_SUCCESS', '_ACTIONWEAR_LAST_SYNC', '_ACTIONWEAR_PRODUCTS_LANGUAGE', '_ACTIONWEAR_BASE_URL');
DELETE FROM wp_options WHERE option_name LIKE 'delete_%';
DELETE FROM wp_options WHERE option_name LIKE '%_UPDATE';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('original_base_price', 'brand_id', 'cat_ids', 'quantity_supplier', 'total_arrivals', '_wp_attachment_metadata', '_wp_attached_file', 'camac_product_id', 'camac_product_sku', 'camac_cdn_urls', 'camac_attachment_ids', 'supplier_days', 'arrivals_detail', 'supplier_detail', '_sku', '_product_image_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('original_base_price', 'brand_id', 'cat_ids', 'quantity_supplier', 'total_arrivals', '_wp_attachment_metadata', '_wp_attached_file', 'camac_product_id', 'camac_product_sku', 'camac_cdn_urls', 'camac_attachment_ids', 'supplier_days', 'arrivals_detail', 'supplier_detail', '_sku', '_product_image_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('original_base_price', 'brand_id', 'cat_ids', 'quantity_supplier', 'total_arrivals', '_wp_attachment_metadata', '_wp_attached_file', 'camac_product_id', 'camac_product_sku', 'camac_cdn_urls', 'camac_attachment_ids', 'supplier_days', 'arrivals_detail', 'supplier_detail', '_sku', '_product_image_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('original_base_price', 'brand_id', 'cat_ids', 'quantity_supplier', 'total_arrivals', '_wp_attachment_metadata', '_wp_attached_file', 'camac_product_id', 'camac_product_sku', 'camac_cdn_urls', 'camac_attachment_ids', 'supplier_days', 'arrivals_detail', 'supplier_detail', '_sku', '_product_image_gallery');

