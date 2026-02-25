-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ecwmv_default_settings', 'ecwmv_theme_style', 'ecwmv_curr_symbol', 'ecwmv_view_display', 'ecwmv_map_zoom', 'ecwmv_map_center_lat', 'ecwmv_map_center_lng', 'ecwmv_meta_fields');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ecwmv_lat', 'ecwmv_lng', 'ecwmv_event_location', 'ecwmv_event_start_date', 'ecwmv_event_start_time', 'ecwmv_event_end_date', 'ecwmv_event_end_time', 'ecwmv_city', 'ecwmv_state', 'ecwmv_country', 'ecwmv_organizer_phone', 'ecwmv_organizer_email', 'ecwmv_event_cost', 'ecwmv_organizer_name', 'ecwmv_organizer_website');
DELETE FROM wp_usermeta WHERE meta_key IN ('ecwmv_lat', 'ecwmv_lng', 'ecwmv_event_location', 'ecwmv_event_start_date', 'ecwmv_event_start_time', 'ecwmv_event_end_date', 'ecwmv_event_end_time', 'ecwmv_city', 'ecwmv_state', 'ecwmv_country', 'ecwmv_organizer_phone', 'ecwmv_organizer_email', 'ecwmv_event_cost', 'ecwmv_organizer_name', 'ecwmv_organizer_website');
DELETE FROM wp_termmeta WHERE meta_key IN ('ecwmv_lat', 'ecwmv_lng', 'ecwmv_event_location', 'ecwmv_event_start_date', 'ecwmv_event_start_time', 'ecwmv_event_end_date', 'ecwmv_event_end_time', 'ecwmv_city', 'ecwmv_state', 'ecwmv_country', 'ecwmv_organizer_phone', 'ecwmv_organizer_email', 'ecwmv_event_cost', 'ecwmv_organizer_name', 'ecwmv_organizer_website');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ecwmv_lat', 'ecwmv_lng', 'ecwmv_event_location', 'ecwmv_event_start_date', 'ecwmv_event_start_time', 'ecwmv_event_end_date', 'ecwmv_event_end_time', 'ecwmv_city', 'ecwmv_state', 'ecwmv_country', 'ecwmv_organizer_phone', 'ecwmv_organizer_email', 'ecwmv_event_cost', 'ecwmv_organizer_name', 'ecwmv_organizer_website');

