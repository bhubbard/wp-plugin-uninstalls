-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nxsg_flush_needed', 'nxsg_last_ping_time');

