<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('settings_slack_notification_recurrence_mail');
delete_site_option('settings_slack_notification_recurrence_mail');
delete_option('settings_slack_notification_disable_email');
delete_site_option('settings_slack_notification_disable_email');
delete_option('settings_slack_notification_channel');
delete_site_option('settings_slack_notification_channel');
delete_option('settings_slack_notification_bot_name');
delete_site_option('settings_slack_notification_bot_name');
delete_option('settings_slack_notification_recurrence');
delete_site_option('settings_slack_notification_recurrence');
delete_option('settings_slack_notification_attachment_id');
delete_site_option('settings_slack_notification_attachment_id');
delete_option('settings_slack_notification_token');
delete_site_option('settings_slack_notification_token');
delete_option('settings_slack_notification_message_title');
delete_site_option('settings_slack_notification_message_title');
delete_option('settings_slack_notification_message_footer');
delete_site_option('settings_slack_notification_message_footer');
delete_option('settings_slack_notification_green_disable');
delete_site_option('settings_slack_notification_green_disable');
delete_option('notification_message_title');
delete_site_option('notification_message_title');
delete_option('notification_message_footer');
delete_site_option('notification_message_footer');
delete_option('settings_slack_notification_status');
delete_site_option('settings_slack_notification_status');
delete_option('wpdsa_version');
delete_site_option('wpdsa_version');

