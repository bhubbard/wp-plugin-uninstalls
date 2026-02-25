-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpbuddy_license_key', 'wpbuddy_global', 'wpbuddy_latest_news_response');

