<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('p4f_options');
delete_site_option('p4f_options');
delete_option('p4f_db_version');
delete_site_option('p4f_db_version');
delete_option('woocommerce_pay4fun_settings');
delete_site_option('woocommerce_pay4fun_settings');
delete_option('widget_wp_p4fdonationswidget');
delete_site_option('widget_wp_p4fdonationswidget');

