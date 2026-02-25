<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('huraapps_customer_cursor');
delete_site_option('huraapps_customer_cursor');

