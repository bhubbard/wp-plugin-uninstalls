-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awca_auth_settings', 'awca_refresh_token_fail', 'awca_granted_scopes', 'custom_dimension_generated', 'ga_properties', 'awca_access_token', 'awca_dash_settings', 'awca_settings', 'awca_event_settings', 'awca_track_settings', 'measurement_key', 'awca_advance_settings', 'awca_review_request_time', 'measurement_key_process', 'custom_dimension_process', 'awca_refresh_token', 'dimension_key', 'awca_current_tab_id', 'print_js', 'awca_old_url', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('awca_already_tracked', 'awca_refund_already_tracked');
DELETE FROM wp_usermeta WHERE meta_key IN ('awca_already_tracked', 'awca_refund_already_tracked');
DELETE FROM wp_termmeta WHERE meta_key IN ('awca_already_tracked', 'awca_refund_already_tracked');
DELETE FROM wp_commentmeta WHERE meta_key IN ('awca_already_tracked', 'awca_refund_already_tracked');

