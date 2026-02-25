<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eswc_first_activate');
delete_site_option('eswc_first_activate');
delete_option('eswc_settingz');
delete_site_option('eswc_settingz');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('eswc_url_before_login');
delete_site_option('eswc_url_before_login');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('woocommerce_cart_page_id');
delete_site_option('woocommerce_cart_page_id');
delete_option('eswc_dismiss_notice');
delete_site_option('eswc_dismiss_notice');

