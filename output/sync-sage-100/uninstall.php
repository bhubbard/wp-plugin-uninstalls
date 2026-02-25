<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpss_data');
delete_site_option('wpss_data');
delete_option('current_theme');
delete_site_option('current_theme');
delete_option('woocommerce_wpss_upload_dir');
delete_site_option('woocommerce_wpss_upload_dir');
delete_option('wpss_options');
delete_site_option('wpss_options');

