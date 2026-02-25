-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wms7_main_settings', 'wms7_backend', 'wms7_frontend', 'wms7_visitors_per_page', 'wms7_screen_settings', 'wms7_search', 'wms7_current_url', 'wms7_cron', 'cron', 'wms7_console');

