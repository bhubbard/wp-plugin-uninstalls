-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webnalytics_v3_flow_last_run', 'webnalytics_v3_flow_last_error', 'webnalytics_v3_heatmap_last_ping', 'webnalytics_v3_last_rest_access', 'webnalytics_v3_version', 'webnalytics_v3_settings', 'webnalytics_v3_db_ver', 'webnalytics_v3_public_collector_key', 'webnalytics_v3_heatmap_last_click', 'webnalytics_v3_flow_lock');

