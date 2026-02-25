-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_no_base_permalink_flush', 'wp_no_base_permalink', 'wp_no_base_permalink_version');

