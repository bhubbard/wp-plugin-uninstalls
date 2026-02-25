<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('storm_clean_admin_version');
delete_site_option('storm_clean_admin_version');
delete_option('storm_clean_admin_activated');
delete_site_option('storm_clean_admin_activated');
delete_option('storm_clean_admin_generals_options');
delete_site_option('storm_clean_admin_generals_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('wsca_check_inactive_users_cron');

