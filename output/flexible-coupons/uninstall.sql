-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpdesk_helper_options', 'flexible_coupons_expiry_date_format', '_wcml_settings', 'woocommerce_currency', 'flexible_coupons_sample_templates', 'flexible_coupons_wpml_support', 'wpdesk_tracker_notice', 'wpdesk_tracker_agree');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_flexible_coupon_variation_base_on', '_editor_data', '_fcpdf_coupon_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_flexible_coupon_variation_base_on', '_editor_data', '_fcpdf_coupon_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_flexible_coupon_variation_base_on', '_editor_data', '_fcpdf_coupon_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_flexible_coupon_variation_base_on', '_editor_data', '_fcpdf_coupon_data');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

