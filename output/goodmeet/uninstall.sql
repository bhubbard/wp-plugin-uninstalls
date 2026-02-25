-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('goodmeet_google_meet_settings', 'goodmeet_addons_settings', 'goodmeet_integration_settings', 'goodmeet_google_meet_account', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('goodmeet_google_meeting_id', 'goodmeet_google_join_link', 'goodmeet_google_meeting_duration', 'goodmeet__meeting_settings', 'meeting_description', 'goodmeet_meeting_status', 'goodmeet_meeting_start_status', 'goodmeet_connect_as_product', 'goodmeet_connect_product_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('goodmeet_google_meeting_id', 'goodmeet_google_join_link', 'goodmeet_google_meeting_duration', 'goodmeet__meeting_settings', 'meeting_description', 'goodmeet_meeting_status', 'goodmeet_meeting_start_status', 'goodmeet_connect_as_product', 'goodmeet_connect_product_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('goodmeet_google_meeting_id', 'goodmeet_google_join_link', 'goodmeet_google_meeting_duration', 'goodmeet__meeting_settings', 'meeting_description', 'goodmeet_meeting_status', 'goodmeet_meeting_start_status', 'goodmeet_connect_as_product', 'goodmeet_connect_product_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('goodmeet_google_meeting_id', 'goodmeet_google_join_link', 'goodmeet_google_meeting_duration', 'goodmeet__meeting_settings', 'meeting_description', 'goodmeet_meeting_status', 'goodmeet_meeting_start_status', 'goodmeet_connect_as_product', 'goodmeet_connect_product_id');

