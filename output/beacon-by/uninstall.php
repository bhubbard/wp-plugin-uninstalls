<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('beacon_authorized');
delete_site_option('beacon_authorized');
delete_option('beacon_connected');
delete_site_option('beacon_connected');
delete_option('widget_beacon_widget');
delete_site_option('widget_beacon_widget');
delete_option('beacon_promote_options');
delete_site_option('beacon_promote_options');

