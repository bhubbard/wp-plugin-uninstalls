-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_woocci_zaytech_settings', 'woocci_jwt_token', 'woocci_pakms_key', 'woocci_reviews_installed_on', 'woocci_total_success_orders', 'wooccii_zaytech_version', 'woocci_version', 'woocci_force_pakms');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woocci_reviews_dismissed_triggers', '_woocci_reviews_last_dismissed', '_woocci_reviews_already_did');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woocci_reviews_dismissed_triggers', '_woocci_reviews_last_dismissed', '_woocci_reviews_already_did');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woocci_reviews_dismissed_triggers', '_woocci_reviews_last_dismissed', '_woocci_reviews_already_did');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woocci_reviews_dismissed_triggers', '_woocci_reviews_last_dismissed', '_woocci_reviews_already_did');

