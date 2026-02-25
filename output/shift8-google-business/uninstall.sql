-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shift8_google_api_key', 'shift8_google_place_ids');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shift8_google_place_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('shift8_google_place_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('shift8_google_place_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shift8_google_place_id');

