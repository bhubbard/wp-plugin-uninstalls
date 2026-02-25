-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edd_wopb_license_key', 'edd_wopb_license_status', 'edd_wopb_license_expire', 'default_product_cat', 'woocommerce_store_address', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'woocommerce_currency', 'woocommerce_email_from_name', 'woocommerce_email_from_address', 'sendgrid_from_name', 'sendgrid_from_email', 'wpseo_titles', 'woocommerce_manage_stock', 'woocommerce_force_ssl_checkout', 'wopb_helloBar');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wopb_builder_type', 'storekeeper_id', 'product_attribute_image', 'thumbnail_id', 'category_summary', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_metakeywords', 'storekeeper_role', 'category_description', 'category_image', 'menu_item_storekeeper_id', 'menu_storekeeper_id', 'storekeeper_sync_date', 'blocksy_taxonomy_meta_options', 'order', 'color_hex', 'original_url', 'cdn_url', 'is_cdn');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wopb_builder_type', 'storekeeper_id', 'product_attribute_image', 'thumbnail_id', 'category_summary', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_metakeywords', 'storekeeper_role', 'category_description', 'category_image', 'menu_item_storekeeper_id', 'menu_storekeeper_id', 'storekeeper_sync_date', 'blocksy_taxonomy_meta_options', 'order', 'color_hex', 'original_url', 'cdn_url', 'is_cdn');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wopb_builder_type', 'storekeeper_id', 'product_attribute_image', 'thumbnail_id', 'category_summary', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_metakeywords', 'storekeeper_role', 'category_description', 'category_image', 'menu_item_storekeeper_id', 'menu_storekeeper_id', 'storekeeper_sync_date', 'blocksy_taxonomy_meta_options', 'order', 'color_hex', 'original_url', 'cdn_url', 'is_cdn');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wopb_builder_type', 'storekeeper_id', 'product_attribute_image', 'thumbnail_id', 'category_summary', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_metakeywords', 'storekeeper_role', 'category_description', 'category_image', 'menu_item_storekeeper_id', 'menu_storekeeper_id', 'storekeeper_sync_date', 'blocksy_taxonomy_meta_options', 'order', 'color_hex', 'original_url', 'cdn_url', 'is_cdn');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_id_%';

