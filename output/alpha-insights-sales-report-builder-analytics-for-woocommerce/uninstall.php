<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpd_ai_email_settings');
delete_site_option('wpd_ai_email_settings');
delete_option('wpd_ai_cost_defaults');
delete_site_option('wpd_ai_cost_defaults');
delete_option('wpd_ai_order_status');
delete_site_option('wpd_ai_order_status');
delete_option('wpd_ai_admin_style_override');
delete_site_option('wpd_ai_admin_style_override');
delete_option('wpd_ai_prevent_wp_notices');
delete_site_option('wpd_ai_prevent_wp_notices');
delete_option('wpd_ai_use_legacy_order_admin_metaboxes');
delete_site_option('wpd_ai_use_legacy_order_admin_metaboxes');
delete_option('wpd_ai_refunded_order_costs');
delete_site_option('wpd_ai_refunded_order_costs');
delete_option('wpd_ai_cache_build_batch_size');
delete_site_option('wpd_ai_cache_build_batch_size');
delete_option('wpd_ai_db_version');
delete_site_option('wpd_ai_db_version');
delete_option('wpd_ai_currency_table');
delete_site_option('wpd_ai_currency_table');
delete_option('wpd_ai_plugin_visibility');
delete_site_option('wpd_ai_plugin_visibility');
delete_option('wpd_ai_payment_gateway_costs');
delete_site_option('wpd_ai_payment_gateway_costs');
delete_option('wpd_ai_shipping_costs');
delete_site_option('wpd_ai_shipping_costs');
delete_option('wpd_ai_admin_custom_columns');
delete_site_option('wpd_ai_admin_custom_columns');
delete_option('wpd_ai_custom_order_costs');
delete_site_option('wpd_ai_custom_order_costs');
delete_option('wpd_ai_custom_product_costs');
delete_site_option('wpd_ai_custom_product_costs');
delete_option('wpd_ai_analytics');
delete_site_option('wpd_ai_analytics');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_timeout_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpd_ai_onboarding_completed');
delete_site_option('wpd_ai_onboarding_completed');
delete_option('wpd_ai_migrations_completion_times');
delete_site_option('wpd_ai_migrations_completion_times');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpd_dashboard_config_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpd_ai_initial_report_configs_install');
delete_site_option('wpd_ai_initial_report_configs_install');
delete_option('wpd_ai_all_orders_cached');
delete_site_option('wpd_ai_all_orders_cached');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpd_dashboard_last_updated_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('wpd_ai_site_creation_date');
delete_site_option('wpd_ai_site_creation_date');
delete_option('wpd_ai_daily_emails_sent');
delete_site_option('wpd_ai_daily_emails_sent');
delete_option('wpd_ai_weekly_emails_sent');
delete_site_option('wpd_ai_weekly_emails_sent');
delete_option('wpd_ai_monthly_emails_sent');
delete_site_option('wpd_ai_monthly_emails_sent');
delete_option('wpd_ai_analytics_only_track_engaged_sessionss');
delete_site_option('wpd_ai_analytics_only_track_engaged_sessionss');
delete_option('wpd_ai_webhook_settings');
delete_site_option('wpd_ai_webhook_settings');
delete_option('wpd_ai_pending_db_update');
delete_site_option('wpd_ai_pending_db_update');
delete_option('wpd_ai_cache_version');
delete_site_option('wpd_ai_cache_version');
delete_option('wpd_ai_plugin_update_version');
delete_site_option('wpd_ai_plugin_update_version');
delete_option('wpd_ai_pending_rewrite_flush');
delete_site_option('wpd_ai_pending_rewrite_flush');
delete_option('wpd_ai_pending_report_installation');
delete_site_option('wpd_ai_pending_report_installation');
delete_option('wpd_ai_pending_migration_runner');
delete_site_option('wpd_ai_pending_migration_runner');

// Delete Transients
delete_transient('wpd_ai_report_filters_order_query_parameter_values');
delete_site_transient('wpd_ai_report_filters_order_query_parameter_values');
delete_transient('wpd_ai_report_filters_users');
delete_site_transient('wpd_ai_report_filters_users');
delete_transient('wpd_ai_report_filters_products');
delete_site_transient('wpd_ai_report_filters_products');
delete_transient('wpd_ai_report_filters_product_categories');
delete_site_transient('wpd_ai_report_filters_product_categories');
delete_transient('wpd_ai_report_filters_product_tags');
delete_site_transient('wpd_ai_report_filters_product_tags');
delete_transient('wpd_ai_report_filters_billing_countries');
delete_site_transient('wpd_ai_report_filters_billing_countries');
delete_transient('wpd_ai_report_filters_facebook_campaigns');
delete_site_transient('wpd_ai_report_filters_facebook_campaigns');
delete_transient('wpd_ai_report_filters_google_campaigns');
delete_site_transient('wpd_ai_report_filters_google_campaigns');
delete_transient('wpd_ai_report_filters_expense_categories');
delete_site_transient('wpd_ai_report_filters_expense_categories');
delete_transient('wpd_ai_report_filters_website_traffic_query_parameter_values');
delete_site_transient('wpd_ai_report_filters_website_traffic_query_parameter_values');
delete_transient('wpd_ai_report_filters_website_traffic_events');
delete_site_transient('wpd_ai_report_filters_website_traffic_events');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient__wpd_product_statistics_%', '_site_transient__wpd_product_statistics_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wpdai_product_meta_keys');
delete_site_transient('wpdai_product_meta_keys');
delete_transient('_wpd_updating_all_orders_cache');
delete_site_transient('_wpd_updating_all_orders_cache');
delete_transient('wpd_ai_free_deactivated_by_pro');
delete_site_transient('wpd_ai_free_deactivated_by_pro');
delete_transient('wpd_ai_activation_redirect');
delete_site_transient('wpd_ai_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpd_ai_landing_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpd_ai_landing_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpd_ai_landing_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpd_ai_landing_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpd_ai_referral_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpd_ai_referral_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpd_ai_referral_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpd_ai_referral_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpd_ai_session_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpd_ai_session_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpd_ai_session_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpd_ai_session_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpd_ai_registration_url_current' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpd_ai_registration_url_current' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpd_ai_registration_url_current' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpd_ai_registration_url_current' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpd_ai_registration_url_referral' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpd_ai_registration_url_referral' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpd_ai_registration_url_referral' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpd_ai_registration_url_referral' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpd_ai_last_login_unix' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpd_ai_last_login_unix' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpd_ai_last_login_unix' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpd_ai_last_login_unix' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpd_ai_last_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpd_ai_last_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpd_ai_last_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpd_ai_last_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpd_ai_product_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpd_ai_product_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpd_ai_product_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpd_ai_product_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpd_ai_custom_product_costs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpd_ai_custom_product_costs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpd_ai_custom_product_costs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpd_ai_custom_product_costs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpd_ai_product_data_store' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpd_ai_product_data_store' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpd_ai_product_data_store' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpd_ai_product_data_store' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpd_analytics_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpd_analytics_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpd_analytics_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpd_analytics_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpd_ai_product_analytics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpd_ai_product_analytics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpd_ai_product_analytics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpd_ai_product_analytics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpd_user_analytics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpd_user_analytics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpd_user_analytics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpd_user_analytics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cogs_total_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cogs_total_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cogs_total_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cogs_total_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_regular_price' ) );

