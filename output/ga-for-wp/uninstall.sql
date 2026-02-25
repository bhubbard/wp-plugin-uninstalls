-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ga4wp_auth_settings', 'ga4wp_refresh_token_fail', 'ga4wp_granted_scopes', 'custom_dimension_generated', 'ga_properties', 'ga4wp_access_token', 'ga4wp_dash_settings', 'ga4wp_settings', 'ga4wp_event_settings', 'ga4wp_track_settings', 'measurement_key', 'ga4wp_advance_settings', 'ga4wp_review_request_time', 'measurement_key_process', 'custom_dimension_process', 'ga4wp_refresh_token', 'dimension_key', 'ga4wp_current_tab_id', 'print_js', 'ga4wp_old_url', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ga4wp_already_tracked', 'ga4wp_refund_already_tracked');
DELETE FROM wp_usermeta WHERE meta_key IN ('ga4wp_already_tracked', 'ga4wp_refund_already_tracked');
DELETE FROM wp_termmeta WHERE meta_key IN ('ga4wp_already_tracked', 'ga4wp_refund_already_tracked');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ga4wp_already_tracked', 'ga4wp_refund_already_tracked');

