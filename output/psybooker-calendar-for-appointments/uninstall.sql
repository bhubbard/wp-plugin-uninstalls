-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wppa_timezone', 'wppa_slot_interval_minutes', 'wppa_google_client_id', 'wppa_google_client_secret', 'wppa_google_calendar_id', 'wppa_psychologist_name', 'wppa_reminders_enabled', 'wppa_reminder_minutes', 'wppa_reminder_method', 'wppa_email_notifications_enabled', 'wppa_admin_email', 'wppa_rate_limit_view_slots', 'wppa_rate_limit_book', 'wppa_db_version', 'wppa_lead_time_hours', 'wppa_close_adjacent_slots_after', 'wppa_close_adjacent_slots_before', 'wppa_close_adjacent_google_events', 'wppa_timezone_auto', 'wppa_google_enabled', 'wppa_google_two_way_sync', 'wppa_last_sync_time', 'wppa_encryption_key', 'wppa_google_sync_token', 'wppa_google_token_expires', 'wppa_google_refresh_token', 'wppa_google_access_token');
DELETE FROM wp_options WHERE option_name LIKE 'wppa_overrides_snapshot_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wppa_admin_tf', 'wppa_google_oauth_state', 'wppa_dismissed_encryption_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('wppa_admin_tf', 'wppa_google_oauth_state', 'wppa_dismissed_encryption_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('wppa_admin_tf', 'wppa_google_oauth_state', 'wppa_dismissed_encryption_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wppa_admin_tf', 'wppa_google_oauth_state', 'wppa_dismissed_encryption_notice');

