-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpfront-scroll-top-options');
DELETE FROM wp_options WHERE option_name LIKE '%_activated';

