<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eesymodi_time');
delete_site_option('eesymodi_time');
delete_option('eesymodi_interval');
delete_site_option('eesymodi_interval');
delete_option('eesymodi_selected_posts');
delete_site_option('eesymodi_selected_posts');
delete_option('eesymodi_last_update_date');
delete_site_option('eesymodi_last_update_date');

// Clear Cron Jobs
wp_clear_scheduled_hook('eesymodi_update_post_modified');

