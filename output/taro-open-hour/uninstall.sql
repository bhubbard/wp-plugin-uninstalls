-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tsoh_post_types', 'tsoh_place_post_type', 'tsoh_place_post_type_public', 'tsoh_place_post_types', 'tsoh_google_api_key', 'tsoh_default_time', 'tsoh_default_days', 'tsoh_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tsoh_site_location', '_tsoh_holiday_note', '_tsoh_local_business_type', '_tsoh_access');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tsoh_site_location', '_tsoh_holiday_note', '_tsoh_local_business_type', '_tsoh_access');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tsoh_site_location', '_tsoh_holiday_note', '_tsoh_local_business_type', '_tsoh_access');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tsoh_site_location', '_tsoh_holiday_note', '_tsoh_local_business_type', '_tsoh_access');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_tsoh_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_tsoh_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_tsoh_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_tsoh_%';

