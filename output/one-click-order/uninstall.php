<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oneclickorder_settings');
delete_site_option('oneclickorder_settings');
delete_option('oneclickorder_order_page_id');
delete_site_option('oneclickorder_order_page_id');
delete_option('oneclickorder_manual_orders_log');
delete_site_option('oneclickorder_manual_orders_log');
delete_option('oneclickorder_report_email');
delete_site_option('oneclickorder_report_email');
delete_option('oneclickorder_order_count');
delete_site_option('oneclickorder_order_count');
delete_option('oneclickorder_last_reset');
delete_site_option('oneclickorder_last_reset');
delete_option('oneclickorder_install_date');
delete_site_option('oneclickorder_install_date');
delete_option('oneclickorder_start_date');
delete_site_option('oneclickorder_start_date');

