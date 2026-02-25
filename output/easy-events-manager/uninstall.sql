-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_event_schedules', '_event_speakers', '_event_sponsors', '_sections');
DELETE FROM wp_usermeta WHERE meta_key IN ('_event_schedules', '_event_speakers', '_event_sponsors', '_sections');
DELETE FROM wp_termmeta WHERE meta_key IN ('_event_schedules', '_event_speakers', '_event_sponsors', '_sections');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_event_schedules', '_event_speakers', '_event_sponsors', '_sections');

