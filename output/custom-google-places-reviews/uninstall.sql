-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'custom_cgpr_google_palce_reviews_%';
DELETE FROM wp_options WHERE option_name LIKE 'custom_google_palce_photo_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('google_api_key', 'google_palce_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('google_api_key', 'google_palce_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('google_api_key', 'google_palce_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('google_api_key', 'google_palce_id');

