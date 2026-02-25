-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_okto-depo-order', '_okto-depo-address', '_depo_pickup_from_address', '_depo_18years_check', '_depo_cod', '_okto-depo-deliver-to-address');
DELETE FROM wp_usermeta WHERE meta_key IN ('_okto-depo-order', '_okto-depo-address', '_depo_pickup_from_address', '_depo_18years_check', '_depo_cod', '_okto-depo-deliver-to-address');
DELETE FROM wp_termmeta WHERE meta_key IN ('_okto-depo-order', '_okto-depo-address', '_depo_pickup_from_address', '_depo_18years_check', '_depo_cod', '_okto-depo-deliver-to-address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_okto-depo-order', '_okto-depo-address', '_depo_pickup_from_address', '_depo_18years_check', '_depo_cod', '_okto-depo-deliver-to-address');

