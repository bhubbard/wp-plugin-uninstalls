-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('herogi_api_key', 'herogi_api_secret', 'herogi_tracking_domain', 'herogi_api_url', 'herogi_push_notification_enabled', 'herogi_location_tracking_enabled', 'herogi_click_tracking_enabled', 'herogi_pageload_tracking_enabled', 'herogi_sdk_url');

