-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eib_blocked_ips');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

