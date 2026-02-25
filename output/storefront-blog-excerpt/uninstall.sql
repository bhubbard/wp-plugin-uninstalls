-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('activation_notice');
DELETE FROM wp_options WHERE option_name LIKE '%-version';

