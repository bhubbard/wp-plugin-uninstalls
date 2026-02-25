-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acoustic_connect_activated_time', 'acoustic_connect_enabled', 'acoustic_connect_app_key', 'acoustic_connect_collector_url', 'acoustic_connect_sdk_version', 'acoustic_connect_sdk_minified', 'acoustic_connect_subscription_tier', 'acoustic_connect_debug_mode', 'acoustic_connect_track_product_view', 'acoustic_connect_track_add_to_cart', 'acoustic_connect_track_remove_from_cart', 'acoustic_connect_track_checkout');
DELETE FROM wp_options WHERE option_name LIKE 'acoustic_order_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone');

