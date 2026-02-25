-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tern_wp_event_start_date', '_tern_wp_event_end_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tern_wp_event_start_date', '_tern_wp_event_end_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tern_wp_event_start_date', '_tern_wp_event_end_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tern_wp_event_start_date', '_tern_wp_event_end_date');

