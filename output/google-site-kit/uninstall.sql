-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_google_analytics_settings', 'auto_update_plugins', 'gla_ads_conversion_action', 'gla_ads_id', 'woocommerce_enable_myaccount_registration', 'update_plugins', 'googlesitekit_setup_token');
DELETE FROM wp_options WHERE option_name LIKE 'googlesitekit_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers');

