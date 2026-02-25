<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tsa-calendar-data');
delete_site_option('tsa-calendar-data');
delete_option('tsa-powered-by');
delete_site_option('tsa-powered-by');

