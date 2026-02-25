-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('track_connect_lodging_types', 'plugin_wp_listings_settings', 'wp_listings_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_post_template', '_listing_first_image', '_listing_state', '_listing_city', '_listing_address', '_listing_text', '_listing_min_rate', '_listing_open_house', '_listing_bedrooms', '_listing_bathrooms', '_listing_sqft', '_listing_occupancy', '_listing_unit_id', '_listing_overview', '_listing_disable_sync_description', '_listing_complex_id', '_listing_price', '_listing_images', '_listing_amenities', '_listing_max_rate', '_listing_lot_sqft', '_listing_gallery', '_listing_youtube_id', '_listing_school_neighborhood', '_listing_home_sum', '_listing_map');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_post_template', '_listing_first_image', '_listing_state', '_listing_city', '_listing_address', '_listing_text', '_listing_min_rate', '_listing_open_house', '_listing_bedrooms', '_listing_bathrooms', '_listing_sqft', '_listing_occupancy', '_listing_unit_id', '_listing_overview', '_listing_disable_sync_description', '_listing_complex_id', '_listing_price', '_listing_images', '_listing_amenities', '_listing_max_rate', '_listing_lot_sqft', '_listing_gallery', '_listing_youtube_id', '_listing_school_neighborhood', '_listing_home_sum', '_listing_map');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_post_template', '_listing_first_image', '_listing_state', '_listing_city', '_listing_address', '_listing_text', '_listing_min_rate', '_listing_open_house', '_listing_bedrooms', '_listing_bathrooms', '_listing_sqft', '_listing_occupancy', '_listing_unit_id', '_listing_overview', '_listing_disable_sync_description', '_listing_complex_id', '_listing_price', '_listing_images', '_listing_amenities', '_listing_max_rate', '_listing_lot_sqft', '_listing_gallery', '_listing_youtube_id', '_listing_school_neighborhood', '_listing_home_sum', '_listing_map');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_post_template', '_listing_first_image', '_listing_state', '_listing_city', '_listing_address', '_listing_text', '_listing_min_rate', '_listing_open_house', '_listing_bedrooms', '_listing_bathrooms', '_listing_sqft', '_listing_occupancy', '_listing_unit_id', '_listing_overview', '_listing_disable_sync_description', '_listing_complex_id', '_listing_price', '_listing_images', '_listing_amenities', '_listing_max_rate', '_listing_lot_sqft', '_listing_gallery', '_listing_youtube_id', '_listing_school_neighborhood', '_listing_home_sum', '_listing_map');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_listing_lodging_type_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_listing_lodging_type_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_listing_lodging_type_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_listing_lodging_type_%';

