-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('offline_shell_files', 'offline_shell_enabled', 'offline_shell_debug', 'offline_shell_race_enabled', 'wppn_options_post_types', 'wppn_options_schedule', 'wppn_notification_title', 'wppn_notification_body', 'wppn_notification_icon', 'wppn_notification_link', 'wppn_per_page');

