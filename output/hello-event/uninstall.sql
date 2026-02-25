-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hello_event');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('start_date', 'start_time', 'start_date_time', 'end_date', 'end_time', 'location_name', 'location', 'location_lat', 'location_lng', 'advice', '_sell_tickets', '_tickets', 'link_to_the_shop', '_virtual', '_price', '_regular_price', '_billing_last_name', '_billing_first_name', 'heure', 'coordinates');
DELETE FROM wp_usermeta WHERE meta_key IN ('start_date', 'start_time', 'start_date_time', 'end_date', 'end_time', 'location_name', 'location', 'location_lat', 'location_lng', 'advice', '_sell_tickets', '_tickets', 'link_to_the_shop', '_virtual', '_price', '_regular_price', '_billing_last_name', '_billing_first_name', 'heure', 'coordinates');
DELETE FROM wp_termmeta WHERE meta_key IN ('start_date', 'start_time', 'start_date_time', 'end_date', 'end_time', 'location_name', 'location', 'location_lat', 'location_lng', 'advice', '_sell_tickets', '_tickets', 'link_to_the_shop', '_virtual', '_price', '_regular_price', '_billing_last_name', '_billing_first_name', 'heure', 'coordinates');
DELETE FROM wp_commentmeta WHERE meta_key IN ('start_date', 'start_time', 'start_date_time', 'end_date', 'end_time', 'location_name', 'location', 'location_lat', 'location_lng', 'advice', '_sell_tickets', '_tickets', 'link_to_the_shop', '_virtual', '_price', '_regular_price', '_billing_last_name', '_billing_first_name', 'heure', 'coordinates');

