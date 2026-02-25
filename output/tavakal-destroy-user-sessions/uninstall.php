<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tavakal_included_roles');
delete_site_option('tavakal_included_roles');
delete_option('tavakal_time_type');
delete_site_option('tavakal_time_type');
delete_option('tavakal_time_before_destroying_sessions');
delete_site_option('tavakal_time_before_destroying_sessions');

// Clear Cron Jobs
wp_clear_scheduled_hook('tavakal_destroy_expired_sessions');

