-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cache_timeout', 'token');
DELETE FROM wp_options WHERE option_name LIKE 'wpgrs%';

