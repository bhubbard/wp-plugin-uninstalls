-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cost', '_regular_price', '_sale_price', '_price', '_rq_event_start_date', '_rq_event_start_time', '_rq_event_stop_time', '_rq_event_country_name', '_rq_event_region_name', '_rq_event_address_name', '_rq_event_zip_code', '_redq_event_convert_zip', '_rq_event_lat_name', '_rq_event_lon_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('cost', '_regular_price', '_sale_price', '_price', '_rq_event_start_date', '_rq_event_start_time', '_rq_event_stop_time', '_rq_event_country_name', '_rq_event_region_name', '_rq_event_address_name', '_rq_event_zip_code', '_redq_event_convert_zip', '_rq_event_lat_name', '_rq_event_lon_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('cost', '_regular_price', '_sale_price', '_price', '_rq_event_start_date', '_rq_event_start_time', '_rq_event_stop_time', '_rq_event_country_name', '_rq_event_region_name', '_rq_event_address_name', '_rq_event_zip_code', '_redq_event_convert_zip', '_rq_event_lat_name', '_rq_event_lon_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cost', '_regular_price', '_sale_price', '_price', '_rq_event_start_date', '_rq_event_start_time', '_rq_event_stop_time', '_rq_event_country_name', '_rq_event_region_name', '_rq_event_address_name', '_rq_event_zip_code', '_redq_event_convert_zip', '_rq_event_lat_name', '_rq_event_lon_name');

