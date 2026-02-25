-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcafe_reservation_settings_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id', 'preparing_time', 'delivery_time', 'address', 'location_email', 'location_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id', 'preparing_time', 'delivery_time', 'address', 'location_email', 'location_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id', 'preparing_time', 'delivery_time', 'address', 'location_email', 'location_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id', 'preparing_time', 'delivery_time', 'address', 'location_email', 'location_image');

