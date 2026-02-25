<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rddp-file');
delete_site_option('rddp-file');
delete_option('rd-dashboard-pdf');
delete_site_option('rd-dashboard-pdf');

