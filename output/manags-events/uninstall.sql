-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('event_start_date', 'event_end_date', 'event_from_time', 'event_to_time', 'event_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('event_start_date', 'event_end_date', 'event_from_time', 'event_to_time', 'event_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('event_start_date', 'event_end_date', 'event_from_time', 'event_to_time', 'event_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('event_start_date', 'event_end_date', 'event_from_time', 'event_to_time', 'event_address');

