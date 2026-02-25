<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('polarsteps_username');
delete_site_option('polarsteps_username');
delete_option('polarsteps_trip_id');
delete_site_option('polarsteps_trip_id');
delete_option('polarsteps_user_id');
delete_site_option('polarsteps_user_id');
delete_option('polarsteps_db_version');
delete_site_option('polarsteps_db_version');
delete_option('polarsteps_trip_slug');
delete_site_option('polarsteps_trip_slug');
delete_option('polarsteps_trip_legacy_id');
delete_site_option('polarsteps_trip_legacy_id');

// Clear Cron Jobs
wp_clear_scheduled_hook('polarsteps_update_steps');

