-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('live_shipping_service_secret', 'live_shipping_service_version', 'live_shipping_service_active');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('live_shipping_service_last_error');
DELETE FROM wp_usermeta WHERE meta_key IN ('live_shipping_service_last_error');
DELETE FROM wp_termmeta WHERE meta_key IN ('live_shipping_service_last_error');
DELETE FROM wp_commentmeta WHERE meta_key IN ('live_shipping_service_last_error');

