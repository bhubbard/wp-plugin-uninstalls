<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('altoshift_send_checkout_stats');
delete_site_option('altoshift_send_checkout_stats');
delete_option('altoshift_engine_token');
delete_site_option('altoshift_engine_token');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('altoshift_feed_price_export');
delete_site_option('altoshift_feed_price_export');
delete_option('altoshift_feed_password_protected');
delete_site_option('altoshift_feed_password_protected');
delete_option('altoshift_feed_password');
delete_site_option('altoshift_feed_password');
delete_option('altoshift_layer_enabled');
delete_site_option('altoshift_layer_enabled');
delete_option('altoshift_layer_code');
delete_site_option('altoshift_layer_code');

