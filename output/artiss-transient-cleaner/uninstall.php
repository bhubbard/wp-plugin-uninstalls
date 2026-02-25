<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('transient_clean_options');
delete_site_option('transient_clean_options');
delete_option('transient_clean_expired');
delete_site_option('transient_clean_expired');
delete_option('transient_clean_all');
delete_site_option('transient_clean_all');

// Clear Cron Jobs
wp_clear_scheduled_hook('housekeep_transients');

