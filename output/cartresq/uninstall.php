<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cartresq_sync_interval');
delete_site_option('cartresq_sync_interval');
delete_option('cartresq_enable_auto_sync');
delete_site_option('cartresq_enable_auto_sync');
delete_option('cartresq_api_url');
delete_site_option('cartresq_api_url');
delete_option('cartresq_api_key');
delete_site_option('cartresq_api_key');
delete_option('cartresq_consumer_key');
delete_site_option('cartresq_consumer_key');
delete_option('cartresq_consumer_secret');
delete_site_option('cartresq_consumer_secret');
delete_option('cartresq_key_name');
delete_site_option('cartresq_key_name');
delete_option('cartresq_last_sync');
delete_site_option('cartresq_last_sync');
delete_option('cartresq_sync_status');
delete_site_option('cartresq_sync_status');
delete_option('cartresq_abandonment_threshold');
delete_site_option('cartresq_abandonment_threshold');
delete_option('cartresq_enable_email_notifications');
delete_site_option('cartresq_enable_email_notifications');
delete_option('cartresq_track_guest_carts');
delete_site_option('cartresq_track_guest_carts');
delete_option('cartresq_minimum_cart_value');
delete_site_option('cartresq_minimum_cart_value');
delete_option('cartresq_exclude_products');
delete_site_option('cartresq_exclude_products');
delete_option('cartresq_cart_retention_days');
delete_site_option('cartresq_cart_retention_days');
delete_option('cartresq_data_refresh_days');
delete_site_option('cartresq_data_refresh_days');
delete_option('cartresq_auto_clear_old_data');
delete_site_option('cartresq_auto_clear_old_data');
delete_option('cartresq_sync_logs');
delete_site_option('cartresq_sync_logs');
delete_option('cartresq_api_key_name');
delete_site_option('cartresq_api_key_name');
delete_option('cartresq_api_key_description');
delete_site_option('cartresq_api_key_description');
delete_option('cartresq_key_type');
delete_site_option('cartresq_key_type');
delete_option('cartresq_key_id');
delete_site_option('cartresq_key_id');
delete_option('cartresq_api_key_id');
delete_site_option('cartresq_api_key_id');
delete_option('cartresq_last_api_response');
delete_site_option('cartresq_last_api_response');
delete_option('cartresq_last_api_error');
delete_site_option('cartresq_last_api_error');

// Delete Transients
delete_transient('cartresq_last_cart');
delete_site_transient('cartresq_last_cart');

// Clear Cron Jobs
wp_clear_scheduled_hook('cartresq_auto_sync');
wp_clear_scheduled_hook('cartresq_cron_sync');
wp_clear_scheduled_hook('cartre_cleanup');

