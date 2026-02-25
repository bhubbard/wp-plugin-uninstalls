-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailplus_shipmate_api_url', 'mailplus_shipmate_api_key', 'mailplus_shipmate_api_token', 'mailplus_shipmate_shop_token', 'mailplus_shipmate_integration_complete', 'mailplus_shipmate_woo_activation_token', 'mailplus_shipmate_front_url', 'shipmate_woo_activation_token', 'shipmate_shop_token', 'shipmate_api_url', 'mailplus_shipmate_plugin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mailplus_remote_id', '_mailplus_tracking_number', '_mailplus_carrier');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mailplus_remote_id', '_mailplus_tracking_number', '_mailplus_carrier');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mailplus_remote_id', '_mailplus_tracking_number', '_mailplus_carrier');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mailplus_remote_id', '_mailplus_tracking_number', '_mailplus_carrier');

