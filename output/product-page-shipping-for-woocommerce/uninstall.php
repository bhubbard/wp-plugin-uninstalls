<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcss_options');
delete_site_option('wcss_options');
delete_option('wcss_enable_shipping_dropdown');
delete_site_option('wcss_enable_shipping_dropdown');
delete_option('wcss_eta_map');
delete_site_option('wcss_eta_map');
delete_option('wcss_pro_options');
delete_site_option('wcss_pro_options');
delete_option('wcss_license_key');
delete_site_option('wcss_license_key');
delete_option('wcss_license_status');
delete_site_option('wcss_license_status');
delete_option('wcss_license_activated_on');
delete_site_option('wcss_license_activated_on');
delete_option('wcss_license_response');
delete_site_option('wcss_license_response');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_ship_to_destination');
delete_site_option('woocommerce_ship_to_destination');
delete_option('woocommerce_enable_order_comments');
delete_site_option('woocommerce_enable_order_comments');

// Clear Cron Jobs
wp_clear_scheduled_hook('wcss_license_cron_check');

