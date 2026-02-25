<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('social-traffic-commando-plain_d81c_activated');
delete_site_option('social-traffic-commando-plain_d81c_activated');

// Clear Cron Jobs
wp_clear_scheduled_hook('ssc_event_hook');

