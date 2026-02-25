<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pmw_pixels_option');
delete_site_option('pmw_pixels_option');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('pmw_conversion_api_logs');
delete_site_option('pmw_conversion_api_logs');
delete_option('pmw_admin_notices');
delete_site_option('pmw_admin_notices');
delete_option('pmw_api_store');
delete_site_option('pmw_api_store');
delete_option('pmw_migration');
delete_site_option('pmw_migration');

