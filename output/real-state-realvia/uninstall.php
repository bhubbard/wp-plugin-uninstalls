<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('realvia_realvia_domena');
delete_site_option('realvia_realvia_domena');
delete_option('realvia_realvia_key');
delete_site_option('realvia_realvia_key');

// Clear Cron Jobs
wp_clear_scheduled_hook('realvia_load_data_event');

