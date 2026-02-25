-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ifttt_bridge_options', 'ifttt_bridge_log', 'settings_errors');

