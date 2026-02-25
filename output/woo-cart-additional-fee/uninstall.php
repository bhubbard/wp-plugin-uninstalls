<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcfee_enable');
delete_site_option('wcfee_enable');
delete_option('wcfee_label');
delete_site_option('wcfee_label');
delete_option('wcfee_type');
delete_site_option('wcfee_type');
delete_option('wcfee_fixed');
delete_site_option('wcfee_fixed');
delete_option('wcfee_percentage');
delete_site_option('wcfee_percentage');
delete_option('wcfee_enable_minimum');
delete_site_option('wcfee_enable_minimum');
delete_option('wcfee_enable_maximum');
delete_site_option('wcfee_enable_maximum');
delete_option('wcfee_enable_product_filter');
delete_site_option('wcfee_enable_product_filter');
delete_option('wcfee_minimum');
delete_site_option('wcfee_minimum');
delete_option('wcfee_maximum');
delete_site_option('wcfee_maximum');
delete_option('wcfee_product_filter');
delete_site_option('wcfee_product_filter');

