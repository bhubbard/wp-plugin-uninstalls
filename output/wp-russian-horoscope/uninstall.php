<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp-ruhoroscope-dateUpdate');
delete_site_option('wp-ruhoroscope-dateUpdate');
delete_option('wp-ruhoroscope-data');
delete_site_option('wp-ruhoroscope-data');

