-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wdev-frash', 'wpmudev_apikey', 'allowedthemes', 'wp_defender_shown_activator', 'wd_show_new_feature', 'wd_hardener_settings', 'wd_db_version', 'wp_defender_is_activated', 'wd_audit_fetch_checkpoint', 'wpdef_clear_schedule_firewall_cleanup_temp_blocklist_ips', 'jetpack_active_modules', 'site_admins', 'wpdef_ip_blocklist_sync_last_run_time', 'wp_defender_onboarding_step', 'wp_defender_is_free_activated', 'wd_nofresh_install', 'wphb_settings', 'wp_defender', 'wpdefender_config_clear_active_tag', 'wpdefender_preset_configs_transient_time', 'wp_defender_config_default', 'disable-xml-rpc', 'wd_audit_cached', 'wd_show_ip_detection_notice', 'wpdef_antibot_global_firewall_db_blocklist_count', 'update_core', 'def_waf_status', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE 'defender_security_tweaks_%';
DELETE FROM wp_options WHERE option_name LIKE 'wd-rp-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file', 'first_name', 'last_name', 'nickname', 'description', 'rich_editing', 'syntax_highlighting', 'comment_shortcuts', 'locale', 'admin_color', 'use_ssl', 'show_admin_bar_front', 'wd_last_password_change');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file', 'first_name', 'last_name', 'nickname', 'description', 'rich_editing', 'syntax_highlighting', 'comment_shortcuts', 'locale', 'admin_color', 'use_ssl', 'show_admin_bar_front', 'wd_last_password_change');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file', 'first_name', 'last_name', 'nickname', 'description', 'rich_editing', 'syntax_highlighting', 'comment_shortcuts', 'locale', 'admin_color', 'use_ssl', 'show_admin_bar_front', 'wd_last_password_change');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file', 'first_name', 'last_name', 'nickname', 'description', 'rich_editing', 'syntax_highlighting', 'comment_shortcuts', 'locale', 'admin_color', 'use_ssl', 'show_admin_bar_front', 'wd_last_password_change');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wd_2fa_attempt_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wd_2fa_attempt_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wd_2fa_attempt_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wd_2fa_attempt_%';

