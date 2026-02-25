-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('PAWPS_DISPLAY_ROWS', 'PAWPS_DISPLAY_COLS', 'PAWPS_TEMPLATE_NAME', 'PAWPS_DEBUG');

