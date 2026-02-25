<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('phoeniixx_create_custom_btn');
delete_site_option('phoeniixx_create_custom_btn');
delete_option('phoen_woocommerce_catlog_mode');
delete_site_option('phoen_woocommerce_catlog_mode');

