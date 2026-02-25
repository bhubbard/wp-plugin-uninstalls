-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_subject';
DELETE FROM wp_options WHERE option_name LIKE '%_message';

