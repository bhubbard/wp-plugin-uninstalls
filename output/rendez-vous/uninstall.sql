-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'rendez_vous_last_message_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rendez_vous_venue', '_rendez_vous_duration', '_rendez_vous_status', '_rendez_vous_days', '_rendez_vous_attendees', '_rendez_vous_defdate', '_rendez_vous_group_id', 'notification_rendez_vous_schedule', 'notification_rendez_vous_attend');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rendez_vous_venue', '_rendez_vous_duration', '_rendez_vous_status', '_rendez_vous_days', '_rendez_vous_attendees', '_rendez_vous_defdate', '_rendez_vous_group_id', 'notification_rendez_vous_schedule', 'notification_rendez_vous_attend');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rendez_vous_venue', '_rendez_vous_duration', '_rendez_vous_status', '_rendez_vous_days', '_rendez_vous_attendees', '_rendez_vous_defdate', '_rendez_vous_group_id', 'notification_rendez_vous_schedule', 'notification_rendez_vous_attend');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rendez_vous_venue', '_rendez_vous_duration', '_rendez_vous_status', '_rendez_vous_days', '_rendez_vous_attendees', '_rendez_vous_defdate', '_rendez_vous_group_id', 'notification_rendez_vous_schedule', 'notification_rendez_vous_attend');

