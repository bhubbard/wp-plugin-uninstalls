-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('affirm_us_keys_status', 'woocommerce_affirm_settings', 'active_sitewide_plugins', 'oauth_init');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_gateway_affirm_charge_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_gateway_affirm_charge_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_gateway_affirm_charge_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_gateway_affirm_charge_id');

