-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oelm-services-options', 'oelm-phone-options', 'mo-el-general-options', 'oelm_otp_users', 'oelm_last_cleanup', 'oelm-installed-date', 'fs_debug_mode', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'update_plugins', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('oelm_phone_code', 'oelm_phone_no');
DELETE FROM wp_usermeta WHERE meta_key IN ('oelm_phone_code', 'oelm_phone_no');
DELETE FROM wp_termmeta WHERE meta_key IN ('oelm_phone_code', 'oelm_phone_no');
DELETE FROM wp_commentmeta WHERE meta_key IN ('oelm_phone_code', 'oelm_phone_no');

