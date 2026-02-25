-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xfgmc_plugin_notifications', 'xfgmc_settings_arr', 'xfgmc_last_feed_id', 'xfgmc_keeplogs', 'xfgmc_version', 'xfgmc_feed_content', 'active_sitewide_plugins', 'xfgmc_settings_arr_backup', 'xfgmc_registered_feeds_arr', 'xfgmcp_order_id', 'xfgmcp_order_email');
DELETE FROM wp_options WHERE option_name LIKE 'xfgmc_last_element_feed_%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isc%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isd%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('xfgmc_google_product_category', 'xfgmc_tax_category', 'xfgmc_size', 'xfgmc_size_type', 'xfgmc_size_type_alt', 'xfgmc_fb_product_category', '_xfgmc_barcode', 'rank_math_primary_category', '_xfgmc_fb_product_category', '_xfgmc_identifier_exists', '_ts_gtin', 'usbs_gtin_field', '_alg_ean', '_xfgmc_tax_category');
DELETE FROM wp_usermeta WHERE meta_key IN ('xfgmc_google_product_category', 'xfgmc_tax_category', 'xfgmc_size', 'xfgmc_size_type', 'xfgmc_size_type_alt', 'xfgmc_fb_product_category', '_xfgmc_barcode', 'rank_math_primary_category', '_xfgmc_fb_product_category', '_xfgmc_identifier_exists', '_ts_gtin', 'usbs_gtin_field', '_alg_ean', '_xfgmc_tax_category');
DELETE FROM wp_termmeta WHERE meta_key IN ('xfgmc_google_product_category', 'xfgmc_tax_category', 'xfgmc_size', 'xfgmc_size_type', 'xfgmc_size_type_alt', 'xfgmc_fb_product_category', '_xfgmc_barcode', 'rank_math_primary_category', '_xfgmc_fb_product_category', '_xfgmc_identifier_exists', '_ts_gtin', 'usbs_gtin_field', '_alg_ean', '_xfgmc_tax_category');
DELETE FROM wp_commentmeta WHERE meta_key IN ('xfgmc_google_product_category', 'xfgmc_tax_category', 'xfgmc_size', 'xfgmc_size_type', 'xfgmc_size_type_alt', 'xfgmc_fb_product_category', '_xfgmc_barcode', 'rank_math_primary_category', '_xfgmc_fb_product_category', '_xfgmc_identifier_exists', '_ts_gtin', 'usbs_gtin_field', '_alg_ean', '_xfgmc_tax_category');

