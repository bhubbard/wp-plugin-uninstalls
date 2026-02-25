-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('relay_api_key', 'health-check-site-status-result', 'update_plugins', 'relay_directory_sizes');

