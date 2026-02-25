-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tk_all_in_one_invite_codes_options', 'all_in_one_invite_codes_first_path_after_install', 'all_in_one_invite_codes_general', 'all_in_one_invite_codes_mail_templates', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tk_all_in_one_invite_code_status', 'all_in_one_invite_codes_options', 'tk_all_in_one_invite_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('tk_all_in_one_invite_code_status', 'all_in_one_invite_codes_options', 'tk_all_in_one_invite_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('tk_all_in_one_invite_code_status', 'all_in_one_invite_codes_options', 'tk_all_in_one_invite_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tk_all_in_one_invite_code_status', 'all_in_one_invite_codes_options', 'tk_all_in_one_invite_code');

