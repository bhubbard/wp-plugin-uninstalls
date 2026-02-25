<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Product_stock_option_css');
delete_site_option('Product_stock_option_css');
delete_option('Product_stock_alert_db_version');
delete_site_option('Product_stock_alert_db_version');
delete_option('Product_stock_option_sender');
delete_site_option('Product_stock_option_sender');
delete_option('Product_stock_option_from');
delete_site_option('Product_stock_option_from');
delete_option('Product_stock_option_subject');
delete_site_option('Product_stock_option_subject');
delete_option('Product_stock_option_message');
delete_site_option('Product_stock_option_message');
delete_option('Product_stock_option_error');
delete_site_option('Product_stock_option_error');
delete_option('Product_stock_option_success');
delete_site_option('Product_stock_option_success');
delete_option('Product_stock_option_placeholder');
delete_site_option('Product_stock_option_placeholder');
delete_option('Product_stock_option_submit');
delete_site_option('Product_stock_option_submit');
delete_option('Product_stock_option_shortcode');
delete_site_option('Product_stock_option_shortcode');

