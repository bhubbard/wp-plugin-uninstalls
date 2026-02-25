-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'alg_wc_coupon_by_user_role_amount_section_enabled', 'alg_wc_coupon_by_user_role_amount_per_coupon', 'wpjup_wc_coupon_by_user_role_plugin_enabled', 'wpjup_wc_coupon_by_user_role_invalid_per_coupon', 'wpjup_wc_coupon_by_user_role_disabled', 'alg_wc_coupon_by_user_role_disabled_exceptions', 'wpjup_wc_coupon_by_user_role_invalid', 'alg_wc_coupon_by_user_role_invalid_exceptions', 'wpjup_wc_coupon_by_user_role_invalid_message', 'wpjup_wc_coupon_by_user_role_version');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_alg_wc_coupon_by_user_role_amount');
DELETE FROM wp_usermeta WHERE meta_key IN ('_alg_wc_coupon_by_user_role_amount');
DELETE FROM wp_termmeta WHERE meta_key IN ('_alg_wc_coupon_by_user_role_amount');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_alg_wc_coupon_by_user_role_amount');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

