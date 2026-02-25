-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('starboard_suite_settings', 'starboard_suite_subdomain');

