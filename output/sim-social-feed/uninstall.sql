-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simsf_token', 'simsf_user_media', 'simsf_access_token', 'simsf_user', 'simsf_update_schedule', 'simsf_notification_email');

