-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icf7ic', 'icf7ic_signals_data', 'active_sitewide_plugins', 'auto_update_plugins', 'auto_update_core', 'update_plugins', 'icf7ic_lists_cache');
DELETE FROM wp_options WHERE option_name LIKE 'icf7ic_%';

