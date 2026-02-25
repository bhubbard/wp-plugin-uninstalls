-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blacklist_local', 'blacklist_exclude', 'blacklist_update_process');

