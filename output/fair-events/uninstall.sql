-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fair_events_db_version', 'fair_events_slug');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('event_location', '_wp_attachment_image_alt', 'event_start', 'event_end', 'event_all_day');
DELETE FROM wp_usermeta WHERE meta_key IN ('event_location', '_wp_attachment_image_alt', 'event_start', 'event_end', 'event_all_day');
DELETE FROM wp_termmeta WHERE meta_key IN ('event_location', '_wp_attachment_image_alt', 'event_start', 'event_end', 'event_all_day');
DELETE FROM wp_commentmeta WHERE meta_key IN ('event_location', '_wp_attachment_image_alt', 'event_start', 'event_end', 'event_all_day');

