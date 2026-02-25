-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ngg_wizard', 'nextgen_over_time', 'pope_module_list', 'hide_am_notices', 'ngg_options', 'ngg_last_license_check', 'ngg_options_version', 'envira_cdn_config', 'ngg_admin_menu_tooltip', 'ngg_onboarding_data', 'photocrati_license_default', 'ngg_init_check', 'ngg_update_exists', 'ngg_db_version', 'ngg_next_update', 'ngg_ftp_root_path', 'ngg_api_execution_lock', 'ngg_api_job_list', 'imagely_dates_migrated', 'ngg_transient_groups', 'photocrati_cache_tracker', 'nextgen_usage_tracking_last_checkin', 'nextgen_usage_tracking_config', 'ngg-activated', 'dirsize_cache');
DELETE FROM wp_options WHERE option_name LIKE 'ngg_license_status_%';
DELETE FROM wp_options WHERE option_name LIKE 'ngg_license_level_%';
DELETE FROM wp_options WHERE option_name LIKE 'ngg_license_expiration_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ngg_image_id', '_thumbnail_id', 'nextgen_api_token', '_wp_attachment_image_alt', 'pricelist_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ngg_image_id', '_thumbnail_id', 'nextgen_api_token', '_wp_attachment_image_alt', 'pricelist_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ngg_image_id', '_thumbnail_id', 'nextgen_api_token', '_wp_attachment_image_alt', 'pricelist_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ngg_image_id', '_thumbnail_id', 'nextgen_api_token', '_wp_attachment_image_alt', 'pricelist_id');

