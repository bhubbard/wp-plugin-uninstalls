-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('settings_slack_notification_recurrence_mail', 'settings_slack_notification_disable_email', 'settings_slack_notification_channel', 'settings_slack_notification_bot_name', 'settings_slack_notification_recurrence', 'settings_slack_notification_attachment_id', 'settings_slack_notification_token', 'settings_slack_notification_message_title', 'settings_slack_notification_message_footer', 'settings_slack_notification_green_disable', 'notification_message_title', 'notification_message_footer', 'settings_slack_notification_status', 'wpdsa_version');

