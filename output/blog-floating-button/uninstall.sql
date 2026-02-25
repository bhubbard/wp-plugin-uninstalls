-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bfb_license_key', 'bfb_license_key_optimize', 'bfb_access_db_version', 'bfb_click_db_version', 'bfb_optimize_db_version', 'bfb_retention_period', 'bfb_license_key_check_cache', 'bfb_license_key_optimize_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bfb_use_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('bfb_use_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('bfb_use_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bfb_use_post');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'bfb_designType_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'bfb_designType_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'bfb_designType_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bfb_designType_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'bfb_optId_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'bfb_optId_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'bfb_optId_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bfb_optId_%';

