-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('getnet_admin_warning', 'woocommerce_getnet-billet_settings', 'woocommerce_getnet-creditcard_settings', 'woocommerce_getnet-pix_settings', 'wc_getnet_settings_environment', '_policy_privacy_accept', '_policy_privacy_accept_date', 'privacy_policy_information_displayed', 'getnet_api_warning_cache');
DELETE FROM wp_options WHERE option_name LIKE '%_information_displayed';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

