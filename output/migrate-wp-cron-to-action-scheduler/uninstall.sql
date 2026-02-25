-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acswp_plugin_dismiss_rating_notice', 'acswp_plugin_dismiss_donate_notice', 'acswp_plugin_no_thanks_rating_notice', 'acswp_plugin_dismissed_time', 'acswp_plugin_no_thanks_donate_notice', 'acswp_plugin_dismissed_time_donate', 'acswp_plugin_installed_time', 'acswp_settings', 'acswp_unique_action', 'acswp-show-notice-on-activation', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%_notice';

