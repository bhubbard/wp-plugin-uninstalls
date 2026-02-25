-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('locate_press_set', 'locatepress_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('image_gallery_data', 'locatepress_contact_no', 'locatepress_business_hour', 'locatepress_yt-url', 'locatepress_ig-url', 'locatepress_pin-url', 'locatepress_fb-url', 'locatepress_twir-url', 'locatepress_video_url', 'locatepress_logo', 'lp_location_lat_long', 'lp_location_country', 'lp_location_latitude', 'lp_location_longitude', 'listing_type-icon');
DELETE FROM wp_usermeta WHERE meta_key IN ('image_gallery_data', 'locatepress_contact_no', 'locatepress_business_hour', 'locatepress_yt-url', 'locatepress_ig-url', 'locatepress_pin-url', 'locatepress_fb-url', 'locatepress_twir-url', 'locatepress_video_url', 'locatepress_logo', 'lp_location_lat_long', 'lp_location_country', 'lp_location_latitude', 'lp_location_longitude', 'listing_type-icon');
DELETE FROM wp_termmeta WHERE meta_key IN ('image_gallery_data', 'locatepress_contact_no', 'locatepress_business_hour', 'locatepress_yt-url', 'locatepress_ig-url', 'locatepress_pin-url', 'locatepress_fb-url', 'locatepress_twir-url', 'locatepress_video_url', 'locatepress_logo', 'lp_location_lat_long', 'lp_location_country', 'lp_location_latitude', 'lp_location_longitude', 'listing_type-icon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('image_gallery_data', 'locatepress_contact_no', 'locatepress_business_hour', 'locatepress_yt-url', 'locatepress_ig-url', 'locatepress_pin-url', 'locatepress_fb-url', 'locatepress_twir-url', 'locatepress_video_url', 'locatepress_logo', 'lp_location_lat_long', 'lp_location_country', 'lp_location_latitude', 'lp_location_longitude', 'listing_type-icon');

