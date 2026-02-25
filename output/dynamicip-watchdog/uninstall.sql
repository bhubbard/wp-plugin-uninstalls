-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ts_dipwd_notification_email', 'ts_dipwd_notification_notes', 'ts_dipwd_previous_ip', 'ts_dipwd_settings');

