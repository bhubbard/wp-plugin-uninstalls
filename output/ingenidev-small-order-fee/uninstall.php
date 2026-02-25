<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ingenidev_sof_minimum_order_amount');
delete_site_option('ingenidev_sof_minimum_order_amount');
delete_option('ingenidev_sof_small_order_fee');
delete_site_option('ingenidev_sof_small_order_fee');
delete_option('ingenidev_sof_welcome_displayed');
delete_site_option('ingenidev_sof_welcome_displayed');

