-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('block_section', 'bptk_blocks_already_rebuilt', 'suspend_section', 'styling_section', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'report_user_section', 'report_emails_section', 'report_section', 'bptk-admin-notice-activation', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bptk_suspend', '_bptk_item_id', 'is_upheld', '_bptk_member_reported', '_bptk_reported_by', '_bptk_activity_type', 'bptk_report_substantiated', '_bptk_admin_created', 'bptk_block', 'bptk_blocked_by', 'is_read', 'automod_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('bptk_suspend', '_bptk_item_id', 'is_upheld', '_bptk_member_reported', '_bptk_reported_by', '_bptk_activity_type', 'bptk_report_substantiated', '_bptk_admin_created', 'bptk_block', 'bptk_blocked_by', 'is_read', 'automod_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('bptk_suspend', '_bptk_item_id', 'is_upheld', '_bptk_member_reported', '_bptk_reported_by', '_bptk_activity_type', 'bptk_report_substantiated', '_bptk_admin_created', 'bptk_block', 'bptk_blocked_by', 'is_read', 'automod_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bptk_suspend', '_bptk_item_id', 'is_upheld', '_bptk_member_reported', '_bptk_reported_by', '_bptk_activity_type', 'bptk_report_substantiated', '_bptk_admin_created', 'bptk_block', 'bptk_blocked_by', 'is_read', 'automod_status');

