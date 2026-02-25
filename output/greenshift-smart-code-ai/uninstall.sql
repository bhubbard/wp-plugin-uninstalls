-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'greenshift_smartcode_openaiapikey', 'greenshift_smartcode_claudeapikey', 'greenshift_smartcode_deepseekapikey', 'greenshift_smartcode_geminiapikey', 'greenshift_smartcode_openaiapimodel', 'gspb_global_settings');

