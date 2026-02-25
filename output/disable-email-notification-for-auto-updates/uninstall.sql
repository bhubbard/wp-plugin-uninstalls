-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('itc_notice_dismissed_version');
DELETE FROM wp_options WHERE option_name LIKE '%_disable_plugin_updates';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_plugin_from_dashboard';
DELETE FROM wp_options WHERE option_name LIKE 'disable-email-notification-for-auto-updates%';

