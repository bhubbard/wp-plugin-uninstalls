-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_pvcw_widget_api_key', '_pvcw_widget_url', '_pvcw_widget_page', 'pvcw_widget_api_key');

