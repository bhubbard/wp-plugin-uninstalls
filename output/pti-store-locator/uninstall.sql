-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ptisl_google_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ptisl_opening_hours', 'store_address', 'store_phone', 'store_email', 'store_lat', 'store_lng');
DELETE FROM wp_usermeta WHERE meta_key IN ('ptisl_opening_hours', 'store_address', 'store_phone', 'store_email', 'store_lat', 'store_lng');
DELETE FROM wp_termmeta WHERE meta_key IN ('ptisl_opening_hours', 'store_address', 'store_phone', 'store_email', 'store_lat', 'store_lng');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ptisl_opening_hours', 'store_address', 'store_phone', 'store_email', 'store_lat', 'store_lng');

