-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dxw3_plugins_author', 'all_utility_plugins', 'dxw3_utility_plugins');

