<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kawuda_no_of_rows');
delete_site_option('kawuda_no_of_rows');
delete_option('kawuda_no_of_days');
delete_site_option('kawuda_no_of_days');

