-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wog_settings', 'wog_sitemap_last_generated', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_store_phone', 'woocommerce_store_email', 'woocommerce_store_address', 'woocommerce_store_city', 'woocommerce_default_state', 'woocommerce_store_postcode', 'woocommerce_default_country', 'woo_open_graph_settings', 'wog_migration_completed', 'wog_rewrite_rules_flushed_v2', 'wog_version', 'wog_flush_rewrite_rules');
DELETE FROM wp_options WHERE option_name LIKE 'wog_product_meta_%';
DELETE FROM wp_options WHERE option_name LIKE 'wog_product_schema_%';
DELETE FROM wp_options WHERE option_name LIKE 'wog_category_meta_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wog_og_title', '_wog_og_description', '_wog_disable_og', '_wp_attachment_image_alt', '_condition', '_brand', '_mpn', '_manufacturer_part_number', '_yoast_wpseo_metadesc', 'thumbnail_id', 'rating', '_manufacturer', '_model', '_color', '_size', '_material', '_sale_price_dates_from', '_sale_price_dates_to');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wog_og_title', '_wog_og_description', '_wog_disable_og', '_wp_attachment_image_alt', '_condition', '_brand', '_mpn', '_manufacturer_part_number', '_yoast_wpseo_metadesc', 'thumbnail_id', 'rating', '_manufacturer', '_model', '_color', '_size', '_material', '_sale_price_dates_from', '_sale_price_dates_to');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wog_og_title', '_wog_og_description', '_wog_disable_og', '_wp_attachment_image_alt', '_condition', '_brand', '_mpn', '_manufacturer_part_number', '_yoast_wpseo_metadesc', 'thumbnail_id', 'rating', '_manufacturer', '_model', '_color', '_size', '_material', '_sale_price_dates_from', '_sale_price_dates_to');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wog_og_title', '_wog_og_description', '_wog_disable_og', '_wp_attachment_image_alt', '_condition', '_brand', '_mpn', '_manufacturer_part_number', '_yoast_wpseo_metadesc', 'thumbnail_id', 'rating', '_manufacturer', '_model', '_color', '_size', '_material', '_sale_price_dates_from', '_sale_price_dates_to');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

