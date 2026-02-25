<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hgtmc_gtmcode');
delete_site_option('hgtmc_gtmcode');
delete_option('hgtmc_gsccode');
delete_site_option('hgtmc_gsccode');
delete_option('hgtmc_gacode');
delete_site_option('hgtmc_gacode');

