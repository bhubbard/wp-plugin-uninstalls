<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reviewstap_bus_id');
delete_site_option('reviewstap_bus_id');
delete_option('reviewstap_api_key');
delete_site_option('reviewstap_api_key');
delete_option('reviewstap_secret_key');
delete_site_option('reviewstap_secret_key');
delete_option('reviewstap_auto_add_users');
delete_site_option('reviewstap_auto_add_users');
delete_option('reviewstap_auto_add_wc_customers');
delete_site_option('reviewstap_auto_add_wc_customers');
delete_option('reviewstap_auto_add_wc_orders');
delete_site_option('reviewstap_auto_add_wc_orders');

