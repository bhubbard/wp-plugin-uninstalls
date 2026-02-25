<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shopmetrics_settings');
delete_site_option('shopmetrics_settings');
delete_option('shopmetrics_analytics_api_token');
delete_site_option('shopmetrics_analytics_api_token');
delete_option('shopmetrics_analytics_site_identifier');
delete_site_option('shopmetrics_analytics_site_identifier');
delete_option('woocommerce_manage_stock');
delete_site_option('woocommerce_manage_stock');
delete_option('woocommerce_notify_low_stock_amount');
delete_site_option('woocommerce_notify_low_stock_amount');
delete_option('woocommerce_notify_no_stock_amount');
delete_site_option('woocommerce_notify_no_stock_amount');
delete_option('shopmetrics_analytics_cogs_default_percentage');
delete_site_option('shopmetrics_analytics_cogs_default_percentage');
delete_option('shopmetrics_needs_onboarding');
delete_site_option('shopmetrics_needs_onboarding');
delete_option('shopmetrics_subscription_status');
delete_site_option('shopmetrics_subscription_status');
delete_option('shopmetrics_subscription_plan');
delete_site_option('shopmetrics_subscription_plan');
delete_option('shopmetrics_next_billing_date');
delete_site_option('shopmetrics_next_billing_date');
delete_option('shopmetrics_cancel_at_period_end');
delete_site_option('shopmetrics_cancel_at_period_end');
delete_option('shopmetrics_cancel_at');
delete_site_option('shopmetrics_cancel_at');
delete_option('shopmetrics_pricing_data');
delete_site_option('shopmetrics_pricing_data');
delete_option('shopmetrics_enable_debug_logging');
delete_site_option('shopmetrics_enable_debug_logging');
delete_option('shopmetrics_trial_ends_at');
delete_site_option('shopmetrics_trial_ends_at');
delete_option('shopmetrics_selected_order_blocks');
delete_site_option('shopmetrics_selected_order_blocks');
delete_option('shopmetrics_customer_email');
delete_site_option('shopmetrics_customer_email');
delete_option('shopmetrics_customer_name');
delete_site_option('shopmetrics_customer_name');
delete_option('shopmetrics_customer_type');
delete_site_option('shopmetrics_customer_type');
delete_option('shopmetrics_vat_number');
delete_site_option('shopmetrics_vat_number');
delete_option('shopmetrics_subscription_last_sync');
delete_site_option('shopmetrics_subscription_last_sync');
delete_option('shopmetrics_historical_sync_progress');
delete_site_option('shopmetrics_historical_sync_progress');
delete_option('shopmetrics_sync_in_progress_lock');
delete_site_option('shopmetrics_sync_in_progress_lock');
delete_option('shopmetrics_sync_last_run');
delete_site_option('shopmetrics_sync_last_run');
delete_option('shopmetrics_analytics_customer_hash_salt');
delete_site_option('shopmetrics_analytics_customer_hash_salt');
delete_option('shopmetrics_analytics_last_low_stock_notification');
delete_site_option('shopmetrics_analytics_last_low_stock_notification');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('shopmetrics_activation_redirect');
delete_site_transient('shopmetrics_activation_redirect');
delete_transient('shopmetrics_onboarding_progress');
delete_site_transient('shopmetrics_onboarding_progress');
delete_transient('shopmetrics_sync_fallback_required');
delete_site_transient('shopmetrics_sync_fallback_required');
delete_transient('shopmetrics_sync_running');
delete_site_transient('shopmetrics_sync_running');
delete_transient('shopmetrics_cart_update_in_progress');
delete_site_transient('shopmetrics_cart_update_in_progress');
delete_transient('shopmetrics_skip_implicit_cart_views');
delete_site_transient('shopmetrics_skip_implicit_cart_views');
delete_transient('shopmetrics_sync_throttle');
delete_site_transient('shopmetrics_sync_throttle');
delete_transient('shopmetrics_analytics_last_sync_time');
delete_site_transient('shopmetrics_analytics_last_sync_time');

