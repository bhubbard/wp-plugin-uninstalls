-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom-adminbar-enabled', 'custom-adminbar-bump', 'custom-adminbar-styles');
DELETE FROM wp_options WHERE option_name LIKE 'custom-adminbar-%';

