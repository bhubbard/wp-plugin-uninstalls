-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpuppy_key', 'wpuppy_setup', 'update_core', 'update_plugins');

