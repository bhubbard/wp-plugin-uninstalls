-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('devllo-map-api-key', 'devllo-events-organiser-checkbox', 'devllo-events-comments-checkbox', 'devllo-events-page', 'devllo-calendar-page', 'devllo-events-template-radio', 'Activated_Plugin', 'devllo_events_current_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_start_year', '_start_month', '_start_day', '_start_hour', '_start_minute', '_end_year', '_end_month', '_end_day', '_end_hour', '_end_minute', 'devllo_event_location_key', 'devllo_event_price_key', 'devllo_event_url_key', 'devllo_event_location_name_key', 'devllo_event_event_link_key', 'devllo_event_location_street_key', 'devllo_event_location_route_key', 'devllo_event_location_city_key', 'devllo_event_location_state_key', 'devllo_event_location_zip_key', 'devllo_event_location_country_key', 'devllo_event_location_lat_key', 'devllo_event_location_long_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_start_year', '_start_month', '_start_day', '_start_hour', '_start_minute', '_end_year', '_end_month', '_end_day', '_end_hour', '_end_minute', 'devllo_event_location_key', 'devllo_event_price_key', 'devllo_event_url_key', 'devllo_event_location_name_key', 'devllo_event_event_link_key', 'devllo_event_location_street_key', 'devllo_event_location_route_key', 'devllo_event_location_city_key', 'devllo_event_location_state_key', 'devllo_event_location_zip_key', 'devllo_event_location_country_key', 'devllo_event_location_lat_key', 'devllo_event_location_long_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_start_year', '_start_month', '_start_day', '_start_hour', '_start_minute', '_end_year', '_end_month', '_end_day', '_end_hour', '_end_minute', 'devllo_event_location_key', 'devllo_event_price_key', 'devllo_event_url_key', 'devllo_event_location_name_key', 'devllo_event_event_link_key', 'devllo_event_location_street_key', 'devllo_event_location_route_key', 'devllo_event_location_city_key', 'devllo_event_location_state_key', 'devllo_event_location_zip_key', 'devllo_event_location_country_key', 'devllo_event_location_lat_key', 'devllo_event_location_long_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_start_year', '_start_month', '_start_day', '_start_hour', '_start_minute', '_end_year', '_end_month', '_end_day', '_end_hour', '_end_minute', 'devllo_event_location_key', 'devllo_event_price_key', 'devllo_event_url_key', 'devllo_event_location_name_key', 'devllo_event_event_link_key', 'devllo_event_location_street_key', 'devllo_event_location_route_key', 'devllo_event_location_city_key', 'devllo_event_location_state_key', 'devllo_event_location_zip_key', 'devllo_event_location_country_key', 'devllo_event_location_lat_key', 'devllo_event_location_long_key');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_month';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_month';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_month';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_month';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_day';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_day';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_day';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_day';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_year';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_year';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_year';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_year';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_hour';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_hour';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_hour';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_hour';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_minute';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_minute';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_minute';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_minute';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_date';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_date';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_date';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_date';

