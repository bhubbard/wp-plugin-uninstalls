<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('offline_shell_files');
delete_site_option('offline_shell_files');
delete_option('offline_shell_enabled');
delete_site_option('offline_shell_enabled');
delete_option('offline_shell_debug');
delete_site_option('offline_shell_debug');
delete_option('offline_shell_race_enabled');
delete_site_option('offline_shell_race_enabled');
delete_option('wppn_options_post_types');
delete_site_option('wppn_options_post_types');
delete_option('wppn_options_schedule');
delete_site_option('wppn_options_schedule');
delete_option('wppn_notification_title');
delete_site_option('wppn_notification_title');
delete_option('wppn_notification_body');
delete_site_option('wppn_notification_body');
delete_option('wppn_notification_icon');
delete_site_option('wppn_notification_icon');
delete_option('wppn_notification_link');
delete_site_option('wppn_notification_link');
delete_option('wppn_per_page');
delete_site_option('wppn_per_page');

