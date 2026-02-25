-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpaigen_usage_today', 'wpaigen_daily_limit', 'wpaigen_license_type', 'wpaigen_license_key', 'wpaigen_last_usage_date', 'wpaigen_timezone', 'wpaigen_license_email', 'wpaigen_license_status', 'wpaigen_test_country', 'wpaigen_scheduler_db_version', 'wpaigen_midtrans_client_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpaigen_meta_title', '_wpaigen_meta_description', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', 'rank_math_title', 'rank_math_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpaigen_meta_title', '_wpaigen_meta_description', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', 'rank_math_title', 'rank_math_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpaigen_meta_title', '_wpaigen_meta_description', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', 'rank_math_title', 'rank_math_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpaigen_meta_title', '_wpaigen_meta_description', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', 'rank_math_title', 'rank_math_description');

