-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'wpcw_add_courses_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpcw_remove_courses_%';

