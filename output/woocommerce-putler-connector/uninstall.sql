-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('putler_connector_settings', 'putler_connector_authenticated', 'putler_connector_temp_token', 'putler_connector_putler_temp_token', '_wpc_activation_redirect', 'active_sitewide_plugins', '_wpc_update_redirect_2911', '_wpc_update_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_last_updated';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_refund_amount');
DELETE FROM wp_usermeta WHERE meta_key IN ('_refund_amount');
DELETE FROM wp_termmeta WHERE meta_key IN ('_refund_amount');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_refund_amount');

