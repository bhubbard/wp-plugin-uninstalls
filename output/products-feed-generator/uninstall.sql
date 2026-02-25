-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pfg_product_debug_log', 'pfg_product_attributes_map', 'pfg_product_identifiers', 'pfg_product_feed_name', 'pfg_product_variants', 'pfg_product_brand', 'pfg_product_details_section', 'pfg_product_material', 'pfg_cron_schedule', 'woocommerce_currency', 'woocommerce_weight_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('variable_product_gtin', 'variable_product_mpn', '_product_brand', '_product_image_thumbnail', '_product_gtin', '_product_mpn', '_product_google_category', '_product_condition');
DELETE FROM wp_usermeta WHERE meta_key IN ('variable_product_gtin', 'variable_product_mpn', '_product_brand', '_product_image_thumbnail', '_product_gtin', '_product_mpn', '_product_google_category', '_product_condition');
DELETE FROM wp_termmeta WHERE meta_key IN ('variable_product_gtin', 'variable_product_mpn', '_product_brand', '_product_image_thumbnail', '_product_gtin', '_product_mpn', '_product_google_category', '_product_condition');
DELETE FROM wp_commentmeta WHERE meta_key IN ('variable_product_gtin', 'variable_product_mpn', '_product_brand', '_product_image_thumbnail', '_product_gtin', '_product_mpn', '_product_google_category', '_product_condition');

