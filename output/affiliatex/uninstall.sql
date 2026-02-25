-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_block', 'affiliatex_google_fonts', 'affiliatex_block_settings', 'affiliatex_customization_settings', 'affiliatex_customization_data', 'affiliatex_db_version', 'affiliatex_dismissed_notices', 'affiliatex_notice_initiated', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'affiliatex_campaign_notices', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data');

