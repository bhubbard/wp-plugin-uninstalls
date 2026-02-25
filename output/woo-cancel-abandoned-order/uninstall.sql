-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_cao_version');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

