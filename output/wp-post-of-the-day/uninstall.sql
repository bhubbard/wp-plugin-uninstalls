-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_expiration';
DELETE FROM wp_options WHERE option_name LIKE '%_used_ids';

