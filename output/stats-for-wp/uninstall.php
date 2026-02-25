<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stats_for_wpinstalled');
delete_site_option('stats_for_wpinstalled');
delete_option('stats_for_wp_current_version');
delete_site_option('stats_for_wp_current_version');

