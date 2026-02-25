<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woo_store_vacation_onboarding');
delete_site_option('woo_store_vacation_onboarding');
delete_option('woo_store_vacation_rated');
delete_site_option('woo_store_vacation_rated');
delete_option('woo_store_vacation_activation_timestamp');
delete_site_option('woo_store_vacation_activation_timestamp');
delete_option('woo_store_vacation_options');
delete_site_option('woo_store_vacation_options');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

