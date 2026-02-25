-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('moceansms_customer_setting', 'moceansms_domain_reachable', 'moceansms_plugin_version', 'wc_fields_billing', 'smsbump_PhoneNumberPrefix', 'smsbump_StrictNumberPrefix', 'test_mocean', 'ws_plugin__s2member_options', 'fs_debug_mode', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'action_scheduler_admin_notice', 'as_comment_count', 'update_plugins', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('phone', 'country', 'dokan_profile_settings', 'moceansms_phone', 'wcfmmp_profile_settings', 'arm_primary_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('phone', 'country', 'dokan_profile_settings', 'moceansms_phone', 'wcfmmp_profile_settings', 'arm_primary_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('phone', 'country', 'dokan_profile_settings', 'moceansms_phone', 'wcfmmp_profile_settings', 'arm_primary_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('phone', 'country', 'dokan_profile_settings', 'moceansms_phone', 'wcfmmp_profile_settings', 'arm_primary_status');

