-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ssec_event_show_day', 'ssec_event_show_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('ssec_event_show_day', 'ssec_event_show_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('ssec_event_show_day', 'ssec_event_show_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ssec_event_show_day', 'ssec_event_show_time');

