-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cron', 'active_sitewide_plugins', 'seopress_toggle', 'seo_ultimate', 'sq_options', '_metaseo_settings', 'wpseo', 'wpseo_social', 'wpseo_taxonomy_meta', 'woocs_is_multiple_allowed', 'woocommerce_currency', 'woocommerce_enable_reviews', 'woocommerce_enable_review_rating', 'woocommerce_dimension_unit', 'woocommerce_weight_unit', 'wpm_pgw_structured_data_field', 'yith_wcbr_brands_taxonomy', 'rmp_options', 'postratings_options', 'postratings_max', 'judgeme_shop_token', 'yotpo_settings', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('autodescription-term-settings', 'ratings_average', 'ratings_users', 'cwp_meta_box_check', '_wp_attachment_image_alt', 'locale');
DELETE FROM wp_usermeta WHERE meta_key IN ('autodescription-term-settings', 'ratings_average', 'ratings_users', 'cwp_meta_box_check', '_wp_attachment_image_alt', 'locale');
DELETE FROM wp_termmeta WHERE meta_key IN ('autodescription-term-settings', 'ratings_average', 'ratings_users', 'cwp_meta_box_check', '_wp_attachment_image_alt', 'locale');
DELETE FROM wp_commentmeta WHERE meta_key IN ('autodescription-term-settings', 'ratings_average', 'ratings_users', 'cwp_meta_box_check', '_wp_attachment_image_alt', 'locale');

