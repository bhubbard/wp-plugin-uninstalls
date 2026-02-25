-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'frakt123_custom_shipping_order_sync_version', 'frakt123_custom_shipping_order_sync__auto_send_name', 'frakt123_custom_shipping_order_sync__order_status', 'frakt123_custom_shipping_order_sync__order_shipping', 'frakt123_custom_shipping_order_sync__api_name', 'frakt123_custom_shipping_order_sync__secret_name');
DELETE FROM wp_options WHERE option_name LIKE '%_api_name';
DELETE FROM wp_options WHERE option_name LIKE '%_secret_name';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('frakt_track_id', 'frakt_track_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('frakt_track_id', 'frakt_track_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('frakt_track_id', 'frakt_track_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('frakt_track_id', 'frakt_track_link');

