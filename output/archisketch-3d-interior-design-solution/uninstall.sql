-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('archisketch_plugin_login_url', 'archisketch_plugin_uuid');

