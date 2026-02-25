-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gpw_plugin_options', 'gpw_plugin_google_plus_id');

