<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpdesk_tracker_notice');
delete_site_option('wpdesk_tracker_notice');
delete_option('wpdesk_tracker_agree');
delete_site_option('wpdesk_tracker_agree');

