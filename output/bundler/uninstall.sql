-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency_pos', 'woocommerce_cart_redirect_after_add', 'woobundles_db_version', 'bdlr_install', 'bdlr_pro_just_activated', 'bdlr_lite_just_deactivated', 'bdlr_lite_just_activated', 'bdlr_first_time_activated');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_preview_product_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_preview_product_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_preview_product_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_preview_product_id');

