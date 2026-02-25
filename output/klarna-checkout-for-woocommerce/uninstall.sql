-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_kco_settings', 'autoptimize_optimize_checkout', 'woocommerce_ship_to_destination', 'krokedil_debuglog_kco', 'kco_credentials_error', 'woocommerce_checkout_phone_field', 'woocommerce_smart_coupon_apply_before_tax', 'wc_kco_addons', 'klarna_hide_banner', 'kustom_checkout_settings_page_config');
DELETE FROM wp_options WHERE option_name LIKE 'kss_data_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_kco_check_terms_notice', 'dismissed_kco_check_https_notice', 'dismissed_kco_check_autoptimize_notice', 'dismissed_kco_check_optimize_notice', 'dismissed_kco_check_upstream_notice', 'dismissed_kco_version_number', 'dismissed_kco_check_permalinks_notice', '_shipping_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_kco_check_terms_notice', 'dismissed_kco_check_https_notice', 'dismissed_kco_check_autoptimize_notice', 'dismissed_kco_check_optimize_notice', 'dismissed_kco_check_upstream_notice', 'dismissed_kco_version_number', 'dismissed_kco_check_permalinks_notice', '_shipping_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_kco_check_terms_notice', 'dismissed_kco_check_https_notice', 'dismissed_kco_check_autoptimize_notice', 'dismissed_kco_check_optimize_notice', 'dismissed_kco_check_upstream_notice', 'dismissed_kco_version_number', 'dismissed_kco_check_permalinks_notice', '_shipping_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_kco_check_terms_notice', 'dismissed_kco_check_https_notice', 'dismissed_kco_check_autoptimize_notice', 'dismissed_kco_check_optimize_notice', 'dismissed_kco_check_upstream_notice', 'dismissed_kco_version_number', 'dismissed_kco_check_permalinks_notice', '_shipping_email');

