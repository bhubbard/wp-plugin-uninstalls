-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gsbrand_activation_redirect', 'woocommerce_prepend_shop_page_to_urls', 'gswcbr_active_time', 'gswcbr_review_dismiss', 'gsplugins-pro-plugins', 'gsplugins_free_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('brand_image_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('brand_image_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('brand_image_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('brand_image_url');

