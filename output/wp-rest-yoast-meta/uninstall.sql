-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_rest_yoast_meta_version');
DELETE FROM wp_options WHERE option_name LIKE 'yoast_meta_%';

