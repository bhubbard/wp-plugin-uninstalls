-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('settings_errors');
DELETE FROM wp_options WHERE option_name LIKE '%_permalink_structure';

