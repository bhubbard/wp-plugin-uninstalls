<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inwc_settings_group');
delete_site_option('inwc_settings_group');
delete_option('inwc_settings_turn_on');
delete_site_option('inwc_settings_turn_on');
delete_option('inwc_settings_API_key');
delete_site_option('inwc_settings_API_key');
delete_option('inwc_settings_colum_orders_page');
delete_site_option('inwc_settings_colum_orders_page');
delete_option('inwc_settings_show_in_admin_email');
delete_site_option('inwc_settings_show_in_admin_email');
delete_option('abl_inwc_version');
delete_site_option('abl_inwc_version');

