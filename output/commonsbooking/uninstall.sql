-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cb_map_last_nominatim_call', 'commons-booking-settings-pages', 'commonsbooking_options_saved', 'clearCacheHasBeenDone');
DELETE FROM wp_options WHERE option_name LIKE '%_bookingcodes_db_version';
DELETE FROM wp_options WHERE option_name LIKE 'commonsbooking_booking_validation_failed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('geo_latitude', 'geo_longitude', 'first_name', 'last_name', 'phone', 'address', 'commons-booking_location_contactinfo_text', 'commons-booking_item_descr', '_thumbnail_id', 'commons-booking_location_closeddays', 'cancellation_time', 'internal-comment', 'type', 'weekdays', 'full-day', 'grid', 'location-id', 'cb_map_options', 'custom_marker_media', 'custom_marker_cluster', 'marker_item_draft', 'filtergroups', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('geo_latitude', 'geo_longitude', 'first_name', 'last_name', 'phone', 'address', 'commons-booking_location_contactinfo_text', 'commons-booking_item_descr', '_thumbnail_id', 'commons-booking_location_closeddays', 'cancellation_time', 'internal-comment', 'type', 'weekdays', 'full-day', 'grid', 'location-id', 'cb_map_options', 'custom_marker_media', 'custom_marker_cluster', 'marker_item_draft', 'filtergroups', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('geo_latitude', 'geo_longitude', 'first_name', 'last_name', 'phone', 'address', 'commons-booking_location_contactinfo_text', 'commons-booking_item_descr', '_thumbnail_id', 'commons-booking_location_closeddays', 'cancellation_time', 'internal-comment', 'type', 'weekdays', 'full-day', 'grid', 'location-id', 'cb_map_options', 'custom_marker_media', 'custom_marker_cluster', 'marker_item_draft', 'filtergroups', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('geo_latitude', 'geo_longitude', 'first_name', 'last_name', 'phone', 'address', 'commons-booking_location_contactinfo_text', 'commons-booking_item_descr', '_thumbnail_id', 'commons-booking_location_closeddays', 'cancellation_time', 'internal-comment', 'type', 'weekdays', 'full-day', 'grid', 'location-id', 'cb_map_options', 'custom_marker_media', 'custom_marker_cluster', 'marker_item_draft', 'filtergroups', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%markup';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%markup';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%markup';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%markup';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%bookingcode';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%bookingcode';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%bookingcode';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%bookingcode';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_admins';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_admins';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_admins';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_admins';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%location_email_bcc';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%location_email_bcc';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%location_email_bcc';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%location_email_bcc';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%use_global_settings';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%use_global_settings';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%use_global_settings';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%use_global_settings';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%allow_lockdays_in_range';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%allow_lockdays_in_range';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%allow_lockdays_in_range';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%allow_lockdays_in_range';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%count_lockdays_in_range';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%count_lockdays_in_range';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%count_lockdays_in_range';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%count_lockdays_in_range';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%count_lockdays_maximum';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%count_lockdays_maximum';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%count_lockdays_maximum';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%count_lockdays_maximum';

