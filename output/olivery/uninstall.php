<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('olivery_login');
delete_site_option('olivery_login');
delete_option('olivery_password');
delete_site_option('olivery_password');
delete_option('olivery_db');
delete_site_option('olivery_db');
delete_option('olivery_company_sequence');
delete_site_option('olivery_company_sequence');
delete_option('olivery_follower_address');
delete_site_option('olivery_follower_address');
delete_option('olivery_follower_area');
delete_site_option('olivery_follower_area');
delete_option('olivery_follower_store_name');
delete_site_option('olivery_follower_store_name');
delete_option('olivery_follower_mobile_number');
delete_site_option('olivery_follower_mobile_number');
delete_option('olivery_follower_second_mobile_number');
delete_site_option('olivery_follower_second_mobile_number');
delete_option('olivery_delivery_coms');
delete_site_option('olivery_delivery_coms');
delete_option('olivery_new_orders_statuses');
delete_site_option('olivery_new_orders_statuses');

