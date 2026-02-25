<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('store_name');
delete_site_option('store_name');
delete_option('company_name');
delete_site_option('company_name');
delete_option('yml_store');
delete_site_option('yml_store');
delete_option('yml_pickup');
delete_site_option('yml_pickup');
delete_option('yml_delivery');
delete_site_option('yml_delivery');
delete_option('yml_description');
delete_site_option('yml_description');
delete_option('yml_currencies');
delete_site_option('yml_currencies');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('update_yml_file');

