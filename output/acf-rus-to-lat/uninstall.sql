-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_activated_on';
DELETE FROM wp_options WHERE option_name LIKE '%_on';

