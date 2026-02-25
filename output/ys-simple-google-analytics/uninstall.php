<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('YSSGA_GA_Tracking_ID');
delete_site_option('YSSGA_GA_Tracking_ID');

