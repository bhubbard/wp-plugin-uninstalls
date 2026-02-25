-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('geolocator_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_geolocator_hide_for', '_geolocator_redirect_to');
DELETE FROM wp_usermeta WHERE meta_key IN ('_geolocator_hide_for', '_geolocator_redirect_to');
DELETE FROM wp_termmeta WHERE meta_key IN ('_geolocator_hide_for', '_geolocator_redirect_to');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_geolocator_hide_for', '_geolocator_redirect_to');

