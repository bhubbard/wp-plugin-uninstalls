<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bheema_ccw_country_code');
delete_site_option('bheema_ccw_country_code');
delete_option('bheema_ccw_number');
delete_site_option('bheema_ccw_number');
delete_option('bheema_ccw_icon');
delete_site_option('bheema_ccw_icon');
delete_option('bheema_ccw_placement');
delete_site_option('bheema_ccw_placement');
delete_option('bheema_ccw_margin');
delete_site_option('bheema_ccw_margin');

