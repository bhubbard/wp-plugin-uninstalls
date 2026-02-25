-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_systempay_db_version', 'WS_main_page', 'wp_systempay_installed');

