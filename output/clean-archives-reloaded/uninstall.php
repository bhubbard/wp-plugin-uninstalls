<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('car_usejs');
delete_site_option('car_usejs');
delete_option('car_monthorder');
delete_site_option('car_monthorder');
delete_option('car_postorder');
delete_site_option('car_postorder');
delete_option('car_dynamicload');
delete_site_option('car_dynamicload');

