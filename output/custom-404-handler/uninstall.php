<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cust4ha_page_id');
delete_site_option('cust4ha_page_id');
delete_option('cust4ha_logging_enabled');
delete_site_option('cust4ha_logging_enabled');
delete_option('cust4ha_max_logs');
delete_site_option('cust4ha_max_logs');
delete_option('cust4ha_redirect_to_home');
delete_site_option('cust4ha_redirect_to_home');
delete_option('cust4ha_noindex');
delete_site_option('cust4ha_noindex');

