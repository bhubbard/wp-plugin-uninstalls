-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tour_date_info_time', 'tour_date_info_date', 'tour_date_info_location_city_state_province_country_etc_', 'tour_date_info_venue', 'tour_date_info_venue_ticketing_url', 'tour_date_info_timestamp');
DELETE FROM wp_usermeta WHERE meta_key IN ('tour_date_info_time', 'tour_date_info_date', 'tour_date_info_location_city_state_province_country_etc_', 'tour_date_info_venue', 'tour_date_info_venue_ticketing_url', 'tour_date_info_timestamp');
DELETE FROM wp_termmeta WHERE meta_key IN ('tour_date_info_time', 'tour_date_info_date', 'tour_date_info_location_city_state_province_country_etc_', 'tour_date_info_venue', 'tour_date_info_venue_ticketing_url', 'tour_date_info_timestamp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tour_date_info_time', 'tour_date_info_date', 'tour_date_info_location_city_state_province_country_etc_', 'tour_date_info_venue', 'tour_date_info_venue_ticketing_url', 'tour_date_info_timestamp');

