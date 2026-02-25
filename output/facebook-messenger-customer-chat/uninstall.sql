-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fbmcc_page_types', 'fbmcc_pageID', 'fbmcc_locale', 'fbmcc_install_ts', 'fbmcc_last_alert_check_ts', 'fbmcc_cached_alert_check_response', 'fbmcc_notice', 'fbmcc_generatedCode', 'fbmcc_enabled');

