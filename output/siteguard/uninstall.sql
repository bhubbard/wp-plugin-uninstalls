-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('siteguard_config', 'update_core', 'update_plugins', 'update_themes');

