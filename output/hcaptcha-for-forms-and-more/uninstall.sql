-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jetpack_active_modules', 'hcaptcha_settings', 'elementor_safe_mode', 'active_sitewide_plugins', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

