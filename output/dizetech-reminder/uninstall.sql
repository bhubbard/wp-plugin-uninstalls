-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dizetech_rem_settings_templates', 'dizetech_rem_settings_general', 'dizetech_rem_settings_advanced', 'cron_secret');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dizetech_rem_event_datetime', '_dizetech_rem_notes', '_dizetech_rem_notifications');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dizetech_rem_event_datetime', '_dizetech_rem_notes', '_dizetech_rem_notifications');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dizetech_rem_event_datetime', '_dizetech_rem_notes', '_dizetech_rem_notifications');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dizetech_rem_event_datetime', '_dizetech_rem_notes', '_dizetech_rem_notifications');

