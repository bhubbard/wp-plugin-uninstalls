<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('barika_connection_revoked');
delete_site_option('barika_connection_revoked');
delete_option('barika_revocation_message');
delete_site_option('barika_revocation_message');
delete_option('barika_webhook_secret');
delete_site_option('barika_webhook_secret');
delete_option('barika_last_health_check');
delete_site_option('barika_last_health_check');
delete_option('barika_connection_health');
delete_site_option('barika_connection_health');
delete_option('barika_connected');
delete_site_option('barika_connected');
delete_option('barika_connection_token');
delete_site_option('barika_connection_token');
delete_option('barika_store_id');
delete_site_option('barika_store_id');
delete_option('barika_connected_at');
delete_site_option('barika_connected_at');
delete_option('woocommerce_email_from_address');
delete_site_option('woocommerce_email_from_address');
delete_option('barika_custom_api_url');
delete_site_option('barika_custom_api_url');
delete_option('barika_webhook_ids');
delete_site_option('barika_webhook_ids');

// Delete Transients
delete_transient('barika_oauth_state');
delete_site_transient('barika_oauth_state');

// Clear Cron Jobs
wp_clear_scheduled_hook('barika_health_check_cron');

