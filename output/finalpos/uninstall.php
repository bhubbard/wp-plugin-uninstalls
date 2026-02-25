<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('finalpos_current_stage');
delete_site_option('finalpos_current_stage');
delete_option('finalpos_jwt_token');
delete_site_option('finalpos_jwt_token');
delete_option('finalpos_consumer_key');
delete_site_option('finalpos_consumer_key');
delete_option('finalpos_consumer_secret');
delete_site_option('finalpos_consumer_secret');
delete_option('finalpos_last_nonce');
delete_site_option('finalpos_last_nonce');
delete_option('finalpos_last_nonce_time');
delete_site_option('finalpos_last_nonce_time');
delete_option('woocommerce_coming_soon');
delete_site_option('woocommerce_coming_soon');

// Delete Transients
delete_transient('finalpos_setup_error');
delete_site_transient('finalpos_setup_error');

// Clear Cron Jobs
wp_clear_scheduled_hook('finalpos_trigger_product_webhooks');

