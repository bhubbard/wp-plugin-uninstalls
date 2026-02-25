-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpseo_taxonomy_meta');
DELETE FROM wp_options WHERE option_name LIKE '%_ignore';
DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_addon_category_slug', '_yoast_wpseo_primary_category_can_update', '_yoast_wpseo_primary_product_cat_can_update', '_yoast_wpseo_focuskw_text_input', '_yst_is_cornerstone', '_yoast_wpseo_primary_product_cat', '_yoast_wpseo_primary_category');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_addon_category_slug', '_yoast_wpseo_primary_category_can_update', '_yoast_wpseo_primary_product_cat_can_update', '_yoast_wpseo_focuskw_text_input', '_yst_is_cornerstone', '_yoast_wpseo_primary_product_cat', '_yoast_wpseo_primary_category');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_addon_category_slug', '_yoast_wpseo_primary_category_can_update', '_yoast_wpseo_primary_product_cat_can_update', '_yoast_wpseo_focuskw_text_input', '_yst_is_cornerstone', '_yoast_wpseo_primary_product_cat', '_yoast_wpseo_primary_category');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_addon_category_slug', '_yoast_wpseo_primary_category_can_update', '_yoast_wpseo_primary_product_cat_can_update', '_yoast_wpseo_focuskw_text_input', '_yst_is_cornerstone', '_yoast_wpseo_primary_product_cat', '_yoast_wpseo_primary_category');

