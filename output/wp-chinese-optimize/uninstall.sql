-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('XH_WP_OPTIMIZE_ALL', 'XH_WP_OPTIMIZE_HEADER', 'XH_WP_OPTIMIZE_FOOTER', 'XH_WP_OPTIMIZE_POST');

