-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pp_gapikey', 'pp_skip_google', 'pp_events_display_image', 'pp_events_tab_position', 'pp_events_required');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('event-date', 'event-time', 'event-url', 'event-address', 'event-latlng', 'event-unix');
DELETE FROM wp_usermeta WHERE meta_key IN ('event-date', 'event-time', 'event-url', 'event-address', 'event-latlng', 'event-unix');
DELETE FROM wp_termmeta WHERE meta_key IN ('event-date', 'event-time', 'event-url', 'event-address', 'event-latlng', 'event-unix');
DELETE FROM wp_commentmeta WHERE meta_key IN ('event-date', 'event-time', 'event-url', 'event-address', 'event-latlng', 'event-unix');

