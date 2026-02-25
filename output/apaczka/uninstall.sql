-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'apaczka_countries_cache', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_messages';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_parcel_machine_id', '_parcel_machine_address', '_apaczka', 'apaczka_delivery_point', '_is_parcel_locker', '_apaczka_parcel_machine_id', '_apaczka_parcel_machine_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('_parcel_machine_id', '_parcel_machine_address', '_apaczka', 'apaczka_delivery_point', '_is_parcel_locker', '_apaczka_parcel_machine_id', '_apaczka_parcel_machine_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('_parcel_machine_id', '_parcel_machine_address', '_apaczka', 'apaczka_delivery_point', '_is_parcel_locker', '_apaczka_parcel_machine_id', '_apaczka_parcel_machine_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_parcel_machine_id', '_parcel_machine_address', '_apaczka', 'apaczka_delivery_point', '_is_parcel_locker', '_apaczka_parcel_machine_id', '_apaczka_parcel_machine_address');

