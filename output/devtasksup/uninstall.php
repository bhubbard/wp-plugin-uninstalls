<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('devt-connect-data');
delete_site_option('devt-connect-data');
delete_option('dvt_version');
delete_site_option('dvt_version');

