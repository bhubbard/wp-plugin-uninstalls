-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('btsld_blocked_log', 'btsld_blocked_count', 'btsld_settings');

