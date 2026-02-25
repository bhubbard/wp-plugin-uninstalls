-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sep_event_options', 'sep_visual_layout');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('event_address', 'event_meta', 'add_segment', 'event_start_date_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('event_address', 'event_meta', 'add_segment', 'event_start_date_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('event_address', 'event_meta', 'add_segment', 'event_start_date_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('event_address', 'event_meta', 'add_segment', 'event_start_date_time');

