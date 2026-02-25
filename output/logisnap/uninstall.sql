-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('logisnap_settings', 'logisnap_checkout');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('parcel_pickup_id', '_customer_user', 'parcel_pickup_place_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('parcel_pickup_id', '_customer_user', 'parcel_pickup_place_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('parcel_pickup_id', '_customer_user', 'parcel_pickup_place_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('parcel_pickup_id', '_customer_user', 'parcel_pickup_place_description');

