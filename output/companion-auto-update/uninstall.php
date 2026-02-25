<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cau_db_version');
delete_site_option('cau_db_version');
delete_option('cau_redirectToWelcomeScreen');
delete_site_option('cau_redirectToWelcomeScreen');

// Clear Cron Jobs
wp_clear_scheduled_hook('cau_set_schedule_mail');
wp_clear_scheduled_hook('wp_update_plugins');
wp_clear_scheduled_hook('wp_update_themes');
wp_clear_scheduled_hook('wp_version_check');
wp_clear_scheduled_hook('cau_custom_hooks_plugins');
wp_clear_scheduled_hook('cau_custom_hooks_themes');
wp_clear_scheduled_hook('cau_log_updater');
wp_clear_scheduled_hook('cau_outdated_notifier');

