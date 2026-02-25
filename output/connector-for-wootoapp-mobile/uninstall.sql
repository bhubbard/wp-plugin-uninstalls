-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wootoapp_blindkey', 'WC_settings_wootoapp_livemode_enabled', 'WC_settings_wootoapp_site_id', 'WC_settings_wootoapp_secret_key');

