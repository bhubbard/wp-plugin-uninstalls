-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hooks_reference_use_cache', 'hooks_discovery_data', 'hooks_discovery_plugins', 'hooks_reference_cache');

