-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('my_meta_box_event_start', 'my_meta_box_event_end');
DELETE FROM wp_usermeta WHERE meta_key IN ('my_meta_box_event_start', 'my_meta_box_event_end');
DELETE FROM wp_termmeta WHERE meta_key IN ('my_meta_box_event_start', 'my_meta_box_event_end');
DELETE FROM wp_commentmeta WHERE meta_key IN ('my_meta_box_event_start', 'my_meta_box_event_end');

