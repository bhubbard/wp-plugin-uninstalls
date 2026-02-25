-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dbem_locations_enabled', 'dbem_rsvp_enabled', 'dbem_bookings_currency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_event_all_day', '_event_start_date', '_event_start_time', '_event_end_date', '_event_end_time', '_location_id', '_event_rsvp', '_event_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_event_all_day', '_event_start_date', '_event_start_time', '_event_end_date', '_event_end_time', '_location_id', '_event_rsvp', '_event_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_event_all_day', '_event_start_date', '_event_start_time', '_event_end_date', '_event_end_time', '_location_id', '_event_rsvp', '_event_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_event_all_day', '_event_start_date', '_event_start_time', '_event_end_date', '_event_end_time', '_location_id', '_event_rsvp', '_event_id');

