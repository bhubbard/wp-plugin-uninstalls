<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hide_vuukle_admin_notice');
delete_site_option('hide_vuukle_admin_notice');
delete_option('Activated_Vuukle_Plugin_Date');
delete_site_option('Activated_Vuukle_Plugin_Date');
delete_option('Activated_Vuukle_Plugin');
delete_site_option('Activated_Vuukle_Plugin');
delete_option('Vuukle');
delete_site_option('Vuukle');
delete_option('Vuukle_App_Id');
delete_site_option('Vuukle_App_Id');

