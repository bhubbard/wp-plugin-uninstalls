<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chataiwd_module_settings');
delete_site_option('chataiwd_module_settings');
delete_option('config_telephone');
delete_site_option('config_telephone');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');

