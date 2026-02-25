-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('imagprfo_tracking_optin', 'imagprfo_plugin_version', 'image_preview_for_acf_field_settings');

