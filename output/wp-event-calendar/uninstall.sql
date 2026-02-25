-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_event_calendar_date_time', 'wp_event_calendar_all_day', 'wp_event_calendar_end_date_time', 'wp_event_calendar_location', 'wp_event_calendar_repeat', '_wp_trash_meta_status', 'wp_event_calendar_expire');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_event_calendar_date_time', 'wp_event_calendar_all_day', 'wp_event_calendar_end_date_time', 'wp_event_calendar_location', 'wp_event_calendar_repeat', '_wp_trash_meta_status', 'wp_event_calendar_expire');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_event_calendar_date_time', 'wp_event_calendar_all_day', 'wp_event_calendar_end_date_time', 'wp_event_calendar_location', 'wp_event_calendar_repeat', '_wp_trash_meta_status', 'wp_event_calendar_expire');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_event_calendar_date_time', 'wp_event_calendar_all_day', 'wp_event_calendar_end_date_time', 'wp_event_calendar_location', 'wp_event_calendar_repeat', '_wp_trash_meta_status', 'wp_event_calendar_expire');

