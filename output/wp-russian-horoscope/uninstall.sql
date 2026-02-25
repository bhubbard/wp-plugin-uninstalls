-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp-ruhoroscope-dateUpdate', 'wp-ruhoroscope-data');

