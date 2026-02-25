<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wccc_cf7_discord_ignore_spam_entry');
delete_site_option('wccc_cf7_discord_ignore_spam_entry');
delete_option('cf7_db_version');
delete_site_option('cf7_db_version');
delete_option('wccc_cf7_discord_notification_send_to  ');
delete_site_option('wccc_cf7_discord_notification_send_to  ');
delete_option('wccc_cf7_discord_notification_subject');
delete_site_option('wccc_cf7_discord_notification_subject');
delete_option('wccc_cf7_discord_debug');
delete_site_option('wccc_cf7_discord_debug');
delete_option('wccc_cf7_discord_notification_send_to	');
delete_site_option('wccc_cf7_discord_notification_send_to	');
delete_option('wccc_cf7_discord_uninstall');
delete_site_option('wccc_cf7_discord_uninstall');
delete_option('wccc_cf7_discord_db_version');
delete_site_option('wccc_cf7_discord_db_version');

