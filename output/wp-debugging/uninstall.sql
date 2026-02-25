-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_debugging', 'wp_debugging_restore');
DELETE FROM wp_options WHERE option_name LIKE 'wpdi-%';

