-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csf_demo_mode', 'cixwishlist_settings', 'woocommerce_shop_page_id', 'jvm_woocommerce_wishlist_page_id', 'cixww_onboarding_onboarding_steps_status');
DELETE FROM wp_options WHERE option_name LIKE '%_onboarding_steps_status';
DELETE FROM wp_options WHERE option_name LIKE '%_onboarding_dependency_status';
DELETE FROM wp_options WHERE option_name LIKE '%_onboarding_dependency_name';
DELETE FROM wp_options WHERE option_name LIKE '%_get_onboarding_recommended_plugins_status';
DELETE FROM wp_options WHERE option_name LIKE '%_get_onboarding_recommended_plugins_checked_status';
DELETE FROM wp_options WHERE option_name LIKE '%_install_version';
DELETE FROM wp_options WHERE option_name LIKE '%_install_error';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';
DELETE FROM wp_options WHERE option_name LIKE '%_onboarding_redirect';
DELETE FROM wp_options WHERE option_name LIKE 'cix_wc_wishlist_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cix_default_wc_wishlist');
DELETE FROM wp_usermeta WHERE meta_key IN ('cix_default_wc_wishlist');
DELETE FROM wp_termmeta WHERE meta_key IN ('cix_default_wc_wishlist');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cix_default_wc_wishlist');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

