-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('y4ym_plugin_notifications', 'y4ym_settings_arr', 'y4ym_last_feed_id', 'y4ym_keeplogs', 'y4ym_version', 'y4ym_feed_content', 'active_sitewide_plugins', 'yfym_settings_arr', 'yfym_registered_feeds_arr', 'p_arr', 'yfymp_order_id', 'yfymp_order_email', 'y4ymp_order_id', 'y4ymp_order_email');
DELETE FROM wp_options WHERE option_name LIKE 'y4ym_last_element_feed_%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isc%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isd%';
DELETE FROM wp_options WHERE option_name LIKE 'y4ymp_constructor_params%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yfym_barcode', 'yfym_collection_url', 'yfym_collection_picture', 'yfym_collection_num_product_picture', 'rank_math_primary_category', '_ts_gtin', 'usbs_barcode_field', '_alg_ean', '_yfym_cost', '_yfym_days', '_yfym_order_before', '_yfym_individual_vat');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yfym_barcode', 'yfym_collection_url', 'yfym_collection_picture', 'yfym_collection_num_product_picture', 'rank_math_primary_category', '_ts_gtin', 'usbs_barcode_field', '_alg_ean', '_yfym_cost', '_yfym_days', '_yfym_order_before', '_yfym_individual_vat');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yfym_barcode', 'yfym_collection_url', 'yfym_collection_picture', 'yfym_collection_num_product_picture', 'rank_math_primary_category', '_ts_gtin', 'usbs_barcode_field', '_alg_ean', '_yfym_cost', '_yfym_days', '_yfym_order_before', '_yfym_individual_vat');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yfym_barcode', 'yfym_collection_url', 'yfym_collection_picture', 'yfym_collection_num_product_picture', 'rank_math_primary_category', '_ts_gtin', 'usbs_barcode_field', '_alg_ean', '_yfym_cost', '_yfym_days', '_yfym_order_before', '_yfym_individual_vat');

