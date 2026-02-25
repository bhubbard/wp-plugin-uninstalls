-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pdwpst_search_tracker_telemetry_allowed', 'pdwpst_search_tracker_show_telemetry_prompt', 'search_tracker_show_telemetry_prompt', 'search_tracker_telemetry_allowed', 'pdwpst_search_tracker_delete_on_uninstall', 'pdwpst_user_searches_db_version');

