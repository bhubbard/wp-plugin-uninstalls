-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('duplicate_title_validate_options');
DELETE FROM wp_options WHERE option_name LIKE 'dtv_duplicate_title_error_%';

