<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('OrderPro_translations');
delete_site_option('OrderPro_translations');
delete_option('OrderPro_Column');
delete_site_option('OrderPro_Column');
delete_option('OrdersPro_Orders_options');
delete_site_option('OrdersPro_Orders_options');
delete_option('ospcode');
delete_site_option('ospcode');

