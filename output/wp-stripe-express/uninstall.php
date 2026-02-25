<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('stripe_express_mode');
delete_site_option('stripe_express_mode');
delete_option('stripe_express_currency');
delete_site_option('stripe_express_currency');
delete_option('stripe_express_live_key');
delete_site_option('stripe_express_live_key');
delete_option('stripe_express_live_secret');
delete_site_option('stripe_express_live_secret');
delete_option('stripe_express_test_key');
delete_site_option('stripe_express_test_key');
delete_option('stripe_express_test_secret');
delete_site_option('stripe_express_test_secret');
delete_option('stripe_express_webhook_secret');
delete_site_option('stripe_express_webhook_secret');
delete_option('stripe_express_success_url');
delete_site_option('stripe_express_success_url');
delete_option('stripe_express_cancel_url');
delete_site_option('stripe_express_cancel_url');
delete_option('stripe_express_webhook');
delete_site_option('stripe_express_webhook');
delete_option('stripe_express_debug');
delete_site_option('stripe_express_debug');
delete_option('stripe_express_keep_data');
delete_site_option('stripe_express_keep_data');
delete_option('stripe_express_language');
delete_site_option('stripe_express_language');
delete_option('stripe_express_theme');
delete_site_option('stripe_express_theme');
delete_option('stripe_express_plaid_env');
delete_site_option('stripe_express_plaid_env');
delete_option('stripe_express_plaid_client_name');
delete_site_option('stripe_express_plaid_client_name');
delete_option('stripe_express_plaid_client_id');
delete_site_option('stripe_express_plaid_client_id');
delete_option('stripe_express_plaid_secret');
delete_site_option('stripe_express_plaid_secret');
delete_option('stripe_express_plaid_products');
delete_site_option('stripe_express_plaid_products');
delete_option('stripe_express_welcome_dismissed');
delete_site_option('stripe_express_welcome_dismissed');
delete_option('stripe_express_email');
delete_site_option('stripe_express_email');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

