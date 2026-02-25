-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zionbuilder_theme_styles', 'zionbuilder_db_version', 'update_plugins', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zionbuilder_enable_smooth_scroll', 'zionbuilder_preserve_smooth_scroll_history', '_wp_page_template', '_zionbuilder_version', 'zionbuilder_template_themebuilder_area');
DELETE FROM wp_usermeta WHERE meta_key IN ('zionbuilder_enable_smooth_scroll', 'zionbuilder_preserve_smooth_scroll_history', '_wp_page_template', '_zionbuilder_version', 'zionbuilder_template_themebuilder_area');
DELETE FROM wp_termmeta WHERE meta_key IN ('zionbuilder_enable_smooth_scroll', 'zionbuilder_preserve_smooth_scroll_history', '_wp_page_template', '_zionbuilder_version', 'zionbuilder_template_themebuilder_area');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zionbuilder_enable_smooth_scroll', 'zionbuilder_preserve_smooth_scroll_history', '_wp_page_template', '_zionbuilder_version', 'zionbuilder_template_themebuilder_area');

