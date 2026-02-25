-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cmblocks_plugin_activated', 'cm_blocks_favorite_patterns_table_created', 'cm_blocks_visibility_media_sizes', '__cm_blocks_media_migration', '	site_logo', 'site_logo', 'woocommerce_shop_page_id', 'woocommerce_cart_page_id', 'woocommerce_checkout_page_id', 'woocommerce_myaccount_page_id', 'cm_blocks_license_data', '_cm_blocks_plugin_id');
DELETE FROM wp_options WHERE option_name LIKE '__cm_blocks_import_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cmblocks_image_url', '_cmblocks_imported_id', 'cm_blocks_setting_header_sticky', 'cm_blocks_setting_header_sticky__settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('cmblocks_image_url', '_cmblocks_imported_id', 'cm_blocks_setting_header_sticky', 'cm_blocks_setting_header_sticky__settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('cmblocks_image_url', '_cmblocks_imported_id', 'cm_blocks_setting_header_sticky', 'cm_blocks_setting_header_sticky__settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cmblocks_image_url', '_cmblocks_imported_id', 'cm_blocks_setting_header_sticky', 'cm_blocks_setting_header_sticky__settings');

