-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nzmpnt_zoom_plan', 'nzmpnt_account_id', 'nzmpnt_client_id', 'nzmpnt_client_secret', 'nzmpnt_zoom_user_email', 'nzmpnt_wstart_time', 'nzmpnt_wend_time', 'nzmpnt_slot_duration', 'nzmpnt_zoom_timezone', 'nzmpnt_plugin_custom_css');

