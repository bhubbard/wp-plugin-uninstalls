-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qcanlytics_google_analytics_id', 'qcanlytics_exclude_users', 'qcanlytics_disable_tracking', 'qcanlytics_page_speed');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

