-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pig_groups');
DELETE FROM wp_options WHERE option_name LIKE 'pig_%';

