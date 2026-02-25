-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('davsy_api_key', 'wp_davsy_widget_enabled', 'davsy_header_title', 'davsy_no_post', 'wp_davsy');

