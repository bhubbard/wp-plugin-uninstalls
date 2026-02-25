<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sendy_client_id');
delete_site_option('sendy_client_id');
delete_option('sendy_client_secret');
delete_site_option('sendy_client_secret');
delete_option('sendy_access_token');
delete_site_option('sendy_access_token');
delete_option('sendy_refresh_token');
delete_site_option('sendy_refresh_token');
delete_option('sendy_token_expires');
delete_site_option('sendy_token_expires');
delete_option('sendy_import_weight');
delete_site_option('sendy_import_weight');
delete_option('sendy_import_products');
delete_site_option('sendy_import_products');
delete_option('sendy_mark_order_as_completed');
delete_site_option('sendy_mark_order_as_completed');
delete_option('sendy_processing_method');
delete_site_option('sendy_processing_method');
delete_option('sendy_processable_order_status');
delete_site_option('sendy_processable_order_status');
delete_option('sendy_default_shop');
delete_site_option('sendy_default_shop');
delete_option('sendy_hostname');
delete_site_option('sendy_hostname');
delete_option('sendy_webhook_secret');
delete_site_option('sendy_webhook_secret');
delete_option('sendy_previously_used_preference_id');
delete_site_option('sendy_previously_used_preference_id');
delete_option('sendy_previously_used_amount');
delete_site_option('sendy_previously_used_amount');
delete_option('sendy_previously_used_shop_id');
delete_site_option('sendy_previously_used_shop_id');
delete_option('sendy_shipping_methods_last_sync');
delete_site_option('sendy_shipping_methods_last_sync');
delete_option('sendy_webhook_last_checked');
delete_site_option('sendy_webhook_last_checked');
delete_option('sendy_webhook_id');
delete_site_option('sendy_webhook_id');
delete_option('sendy_flash_admin_messages');
delete_site_option('sendy_flash_admin_messages');

// Delete Transients
delete_transient('sendy_shipping_preferences');
delete_site_transient('sendy_shipping_preferences');
delete_transient('sendy_shops');
delete_site_transient('sendy_shops');

// Clear Cron Jobs
wp_clear_scheduled_hook('sendy_cron');

