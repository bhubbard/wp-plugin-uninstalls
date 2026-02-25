-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sau_updated_packages', 'sau_last_checked', 'sau_mode', 'update_core', 'update_plugins', 'update_themes');

