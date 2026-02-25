-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_ignore';
DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('geolocated', 'property_slider_image_id', '_property_meta_fields', '_property_slides', 'property_gallery', 'property_plans');
DELETE FROM wp_usermeta WHERE meta_key IN ('geolocated', 'property_slider_image_id', '_property_meta_fields', '_property_slides', 'property_gallery', 'property_plans');
DELETE FROM wp_termmeta WHERE meta_key IN ('geolocated', 'property_slider_image_id', '_property_meta_fields', '_property_slides', 'property_gallery', 'property_plans');
DELETE FROM wp_commentmeta WHERE meta_key IN ('geolocated', 'property_slider_image_id', '_property_meta_fields', '_property_slides', 'property_gallery', 'property_plans');

