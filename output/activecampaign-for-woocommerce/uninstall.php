<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cron');
delete_site_option('cron');
delete_option('settings_activecampaign');
delete_site_option('settings_activecampaign');
delete_option('activecampaign_for_woocommerce_dismiss_error_notice');
delete_site_option('activecampaign_for_woocommerce_dismiss_error_notice');
delete_option('activecampaign_for_woocommerce_abandoned_cart_last_run');
delete_site_option('activecampaign_for_woocommerce_abandoned_cart_last_run');
delete_option('activecampaign_for_woocommerce_last_order_sync');
delete_site_option('activecampaign_for_woocommerce_last_order_sync');
delete_option('woocommerce_api_enabled');
delete_site_option('woocommerce_api_enabled');
delete_option('activecampaign_for_woocommerce_dismiss_plugin_notice');
delete_site_option('activecampaign_for_woocommerce_dismiss_plugin_notice');
delete_option('activecampaign_for_woocommerce_connection_health_check_last_run');
delete_site_option('activecampaign_for_woocommerce_connection_health_check_last_run');
delete_option('activecampaign_for_woocommerce_settings');
delete_site_option('activecampaign_for_woocommerce_settings');
delete_option('activecampaign_for_woocommerce_db_version');
delete_site_option('activecampaign_for_woocommerce_db_version');
delete_option('activecampaign_for_woocommerce_historical_sync_running_status');
delete_site_option('activecampaign_for_woocommerce_historical_sync_running_status');
delete_option('activecampaign_for_woocommerce_historical_sync_scheduled_status');
delete_site_option('activecampaign_for_woocommerce_historical_sync_scheduled_status');
delete_option('activecampaign_for_woocommerce_historical_sync_stop');
delete_site_option('activecampaign_for_woocommerce_historical_sync_stop');
delete_option('activecampaign_for_woocommerce_product_sync_last_status');
delete_site_option('activecampaign_for_woocommerce_product_sync_last_status');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('activecampaign_for_woocommerce_historical_sync_delay');
delete_site_option('activecampaign_for_woocommerce_historical_sync_delay');
delete_option('activecampaign_for_woocommerce_subscription_sync_last_run');
delete_site_option('activecampaign_for_woocommerce_subscription_sync_last_run');
delete_option('activecampaign_for_woocommerce_last_subscription_sync');
delete_site_option('activecampaign_for_woocommerce_last_subscription_sync');
delete_option('activecampaign_for_woocommerce_storage');
delete_site_option('activecampaign_for_woocommerce_storage');

// Delete Transients
delete_transient('activecampaign_for_woocommerce_hs_contacts');
delete_site_transient('activecampaign_for_woocommerce_hs_contacts');
delete_transient('woocommerce_system_status_wp_version_check');
delete_site_transient('woocommerce_system_status_wp_version_check');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_activecampaign_for_woocommerce_contact%', '_site_transient_activecampaign_for_woocommerce_contact%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('activecampaign_for_woocommerce_connection');
delete_site_transient('activecampaign_for_woocommerce_connection');
delete_transient('activecampaign_for_woocommerce_all_connections');
delete_site_transient('activecampaign_for_woocommerce_all_connections');
delete_transient('activecampaign_for_woocommerce_features');
delete_site_transient('activecampaign_for_woocommerce_features');
delete_transient('acforwc_cart_updated_hook');
delete_site_transient('acforwc_cart_updated_hook');
delete_transient('acforwc_cart_to_order_transition_hook');
delete_site_transient('acforwc_cart_to_order_transition_hook');
delete_transient('acforwc_order_created_hook');
delete_site_transient('acforwc_order_created_hook');
delete_transient('acforwc_order_updated_hook');
delete_site_transient('acforwc_order_updated_hook');
delete_transient('acforwc_order_deleted_hook');
delete_site_transient('acforwc_order_deleted_hook');
delete_transient('acforwc_abandoned_task_hook');
delete_site_transient('acforwc_abandoned_task_hook');

// Clear Cron Jobs
wp_clear_scheduled_hook('activecampaign_for_woocommerce_run_product_sync');
wp_clear_scheduled_hook('activecampaign_for_woocommerce_cart_updated_recurring_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'activecampaign_for_woocommerce_ac_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'activecampaign_for_woocommerce_ac_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'activecampaign_for_woocommerce_ac_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'activecampaign_for_woocommerce_ac_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'activecampaign_for_woocommerce_last_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'activecampaign_for_woocommerce_last_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'activecampaign_for_woocommerce_last_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'activecampaign_for_woocommerce_last_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'activecampaign_for_woocommerce_hosted_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'activecampaign_for_woocommerce_hosted_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'activecampaign_for_woocommerce_hosted_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'activecampaign_for_woocommerce_hosted_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );

