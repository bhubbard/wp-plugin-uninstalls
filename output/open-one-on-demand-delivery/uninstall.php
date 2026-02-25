<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('openone_apikey');
delete_site_option('openone_apikey');
delete_option('openone_secretkey');
delete_site_option('openone_secretkey');
delete_option('openone_date_from');
delete_site_option('openone_date_from');
delete_option('openone_date_to');
delete_site_option('openone_date_to');
delete_option('openone_store_selected');
delete_site_option('openone_store_selected');
delete_option('openone_check_selected');
delete_site_option('openone_check_selected');
delete_option('openone_custom_address');
delete_site_option('openone_custom_address');
delete_option('openone_custom_zipcode');
delete_site_option('openone_custom_zipcode');
delete_option('openone_custom_city');
delete_site_option('openone_custom_city');

