-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('voxpow_tracker_id', 'voxpow_api_token', 'voxpow_commands_js_file', 'voxpow_api_endpoint');

