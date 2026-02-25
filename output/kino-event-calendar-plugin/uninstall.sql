-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ec_color', 'ec_hover_color');
DELETE FROM wp_options WHERE option_name LIKE '%_color';
DELETE FROM wp_options WHERE option_name LIKE '%_hover_color';
DELETE FROM wp_options WHERE option_name LIKE 'ec_cat_color_%';
DELETE FROM wp_options WHERE option_name LIKE '%_date_format';
DELETE FROM wp_options WHERE option_name LIKE '%_time_format';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_event_location', '_event_all_day', '_event_recurring', '_event_frequency', '_event_start_date', '_event_start_time', '_event_end_date', '_event_end_duration', '_event_end_time', '_event_color', '_event_hover_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('_event_location', '_event_all_day', '_event_recurring', '_event_frequency', '_event_start_date', '_event_start_time', '_event_end_date', '_event_end_duration', '_event_end_time', '_event_color', '_event_hover_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('_event_location', '_event_all_day', '_event_recurring', '_event_frequency', '_event_start_date', '_event_start_time', '_event_end_date', '_event_end_duration', '_event_end_time', '_event_color', '_event_hover_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_event_location', '_event_all_day', '_event_recurring', '_event_frequency', '_event_start_date', '_event_start_time', '_event_end_date', '_event_end_duration', '_event_end_time', '_event_color', '_event_hover_color');

