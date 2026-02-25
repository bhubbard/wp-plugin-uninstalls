<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stats_url');
delete_site_option('stats_url');
delete_option('stats_mostlimit');
delete_site_option('stats_mostlimit');
delete_option('stats_display');
delete_site_option('stats_display');

