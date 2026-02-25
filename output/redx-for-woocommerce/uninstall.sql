-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('redx_tracking_plugin_activation_redirect', 'redex_tracking_enabled', 'redex_tracking_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_parcel_weight', '_redx_tracking_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_parcel_weight', '_redx_tracking_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_parcel_weight', '_redx_tracking_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_parcel_weight', '_redx_tracking_id');

