<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nsd_show_chart');
delete_site_option('nsd_show_chart');
delete_option('nsd_show_stats');
delete_site_option('nsd_show_stats');

