-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('content_guard_pro_settings', 'content_guard_pro_rule_pack_version', 'content_guard_pro_rule_pack_last_update', 'content_guard_pro_setup_completed', 'content_guard_pro_version', 'content_guard_pro_first_activation', 'cgpro_installation_id', 'content_guard_pro_admin_notice', 'content_guard_pro_allowlist_pattern', 'content_guard_pro_denylist_patterns', 'content_guard_pro_activation_redirect', 'content_guard_pro_clear_data_success', 'content_guard_pro_clear_data_error', 'content_guard_pro_cleanup_success', 'content_guard_pro_cleanup_error', 'content_guard_pro_activation_registered', 'content_guard_pro_scan_progress', 'content_guard_pro_scan_completed', 'content_guard_pro_db_creation_log', 'content_guard_pro_admin_notices', 'content_guard_pro_active_scan_progress', 'content_guard_pro_active_scan_id', 'content_guard_pro_db_size_check', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE 'content_guard_pro_scan_progress_%';
DELETE FROM wp_options WHERE option_name LIKE 'content_guard_pro_pending_scan_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('content_guard_pro_dismissed_critical_notice', 'content_guard_pro_last_dismissed_critical_count', 'content_guard_pro_dismissed_welcome_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('content_guard_pro_dismissed_critical_notice', 'content_guard_pro_last_dismissed_critical_count', 'content_guard_pro_dismissed_welcome_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('content_guard_pro_dismissed_critical_notice', 'content_guard_pro_last_dismissed_critical_count', 'content_guard_pro_dismissed_welcome_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('content_guard_pro_dismissed_critical_notice', 'content_guard_pro_last_dismissed_critical_count', 'content_guard_pro_dismissed_welcome_notice');

