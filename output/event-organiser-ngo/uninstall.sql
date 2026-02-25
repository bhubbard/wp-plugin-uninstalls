-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ngo_show_events', 'ngo_show_productions', 'ngo_show_concerts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('event_portal', 'event_feed');
DELETE FROM wp_usermeta WHERE meta_key IN ('event_portal', 'event_feed');
DELETE FROM wp_termmeta WHERE meta_key IN ('event_portal', 'event_feed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('event_portal', 'event_feed');

