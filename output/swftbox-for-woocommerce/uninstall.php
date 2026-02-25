<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('swftbox_integration_key');
delete_site_option('swftbox_integration_key');
delete_option('swftbox_oauth_state');
delete_site_option('swftbox_oauth_state');
delete_option('swftbox_wc_consumer_key');
delete_site_option('swftbox_wc_consumer_key');
delete_option('swftbox_wc_consumer_secret');
delete_site_option('swftbox_wc_consumer_secret');
delete_option('swftbox_wc_key_permissions');
delete_site_option('swftbox_wc_key_permissions');
delete_option('swftbox_wizard_oauth_state');
delete_site_option('swftbox_wizard_oauth_state');
delete_option('swftbox_retailer_id');
delete_site_option('swftbox_retailer_id');
delete_option('swftbox_retailer_name');
delete_site_option('swftbox_retailer_name');
delete_option('swftbox_retailer_email');
delete_site_option('swftbox_retailer_email');
delete_option('swftbox_connection_status');
delete_site_option('swftbox_connection_status');
delete_option('swftbox_connected_at');
delete_site_option('swftbox_connected_at');
delete_option('swftbox_require_phone');
delete_site_option('swftbox_require_phone');
delete_option('swftbox_last_successful_sync');
delete_site_option('swftbox_last_successful_sync');
delete_option('swftbox_credentials_synced');
delete_site_option('swftbox_credentials_synced');

// Delete Transients
delete_transient('swftbox_settings_saved');
delete_site_transient('swftbox_settings_saved');
delete_transient('swftbox_connection_error');
delete_site_transient('swftbox_connection_error');
delete_transient('swftbox_oauth_sync_failed');
delete_site_transient('swftbox_oauth_sync_failed');
delete_transient('swftbox_oauth_success');
delete_site_transient('swftbox_oauth_success');
delete_transient('swftbox_oauth_error');
delete_site_transient('swftbox_oauth_error');
delete_transient('swftbox_oauth_disconnected');
delete_site_transient('swftbox_oauth_disconnected');
delete_transient('swftbox_oauth_notice_shown');
delete_site_transient('swftbox_oauth_notice_shown');
delete_transient('swftbox_trigger_oauth');
delete_site_transient('swftbox_trigger_oauth');
delete_transient('swftbox_webhook_error');
delete_site_transient('swftbox_webhook_error');
delete_transient('swftbox_webhook_health_warning');
delete_site_transient('swftbox_webhook_health_warning');
delete_transient('swftbox_wizard_setup_mode');
delete_site_transient('swftbox_wizard_setup_mode');
delete_transient('swftbox_activated');
delete_site_transient('swftbox_activated');

// Clear Cron Jobs
wp_clear_scheduled_hook('swftbox_webhook_health_check');
wp_clear_scheduled_hook('swftbox_health_check');

