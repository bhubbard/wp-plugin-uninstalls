<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wooebay_options');
delete_site_option('wooebay_options');
delete_option('wooebay_export_data');
delete_site_option('wooebay_export_data');
delete_option('wooebay_products_file_name');
delete_site_option('wooebay_products_file_name');
delete_option('wooebay_tmplate_opt');
delete_site_option('wooebay_tmplate_opt');

