<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vendor_number');
delete_site_option('vendor_number');
delete_option('total_items');
delete_site_option('total_items');

