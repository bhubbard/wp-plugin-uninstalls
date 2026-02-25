-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ultimate_blocks', 'ultimate_blocks_extensions', 'UltimateBlocks_installDate', 'UltimateBlocks_review_notify', 'ultimate_blocks_css_version', 'ub_icon_choices', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'widget_block', '_welcome_redirect_ub', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

