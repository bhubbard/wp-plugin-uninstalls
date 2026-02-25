-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blue_raven_activated', 'blue_raven_remove_all_data', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'blue_raven_wc_product_slug_redirects', 'blueraven_products_db_version', 'blueraven_messages_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_blue_raven_meta_description', '_blue_raven_meta_tags', '_blue_raven_already_processed', 'rating', '_low_stock_amount', '_blue_raven_meta_title', '_product_image_gallery', '_rank_math_description', '_yoast_wpseo_metadesc');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_blue_raven_meta_description', '_blue_raven_meta_tags', '_blue_raven_already_processed', 'rating', '_low_stock_amount', '_blue_raven_meta_title', '_product_image_gallery', '_rank_math_description', '_yoast_wpseo_metadesc');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_blue_raven_meta_description', '_blue_raven_meta_tags', '_blue_raven_already_processed', 'rating', '_low_stock_amount', '_blue_raven_meta_title', '_product_image_gallery', '_rank_math_description', '_yoast_wpseo_metadesc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_blue_raven_meta_description', '_blue_raven_meta_tags', '_blue_raven_already_processed', 'rating', '_low_stock_amount', '_blue_raven_meta_title', '_product_image_gallery', '_rank_math_description', '_yoast_wpseo_metadesc');

