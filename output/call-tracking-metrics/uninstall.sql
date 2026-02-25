-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ctm_api_base_url', 'ctm_debug_enabled', 'ctm_dashboard_enabled', 'ctm_auto_inject_tracking_script', 'ctm_api_key', 'ctm_api_secret', 'ctm_forms_without_phone', 'ctm_api_cf7_enabled', 'ctm_api_gf_enabled', 'call_track_account_script', 'ctm_api_auth_account', 'ctm_cf7_notice_dismissed', 'ctm_gf_notice_dismissed', 'sidebars_widgets', 'ctm_log_retention_days', 'ctm_log_auto_cleanup', 'ctm_api_response_times', 'ctm_api_calls_24h', 'ctm_api_active_key', 'ctm_api_active_secret', 'ctm_tracking_override_checkbox', 'ctm_api_dashboard_enabled', 'ctm_api_tracking_enabled', 'ctm_api_cf7_logs', 'ctm_api_gf_logs', 'ctm_duplicate_prevention_enabled', 'ctm_duplicate_prevention_expiration', 'ctm_duplicate_prevention_use_session', 'ctm_duplicate_prevention_fallback_ip', 'ctm_max_log_entries_per_day', 'ctm_max_log_size_mb', 'ctm_max_total_log_size_mb', 'ctm_max_form_log_entries', 'ctm_max_form_log_size_mb', 'ctm_duplicate_prevention_update_notice_pending', 'ctm_duplicate_prevention_migrated_2_1_8', 'ctm_api_tracking_script', 'ctm_log_email_notifications', 'ctm_log_notification_email', 'ctm_include_email', 'ctm_include_name', 'ctm_last_connection_status');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ctm_imported', '_ctm_form_id', '_ctm_import_date', '_ctm_sync_method', '_ctm_form_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ctm_imported', '_ctm_form_id', '_ctm_import_date', '_ctm_sync_method', '_ctm_form_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ctm_imported', '_ctm_form_id', '_ctm_import_date', '_ctm_sync_method', '_ctm_form_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ctm_imported', '_ctm_form_id', '_ctm_import_date', '_ctm_sync_method', '_ctm_form_data');

