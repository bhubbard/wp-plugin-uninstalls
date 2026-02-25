<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('action_scheduler_lock_async-request-runner');
delete_site_option('action_scheduler_lock_async-request-runner');
delete_option('orders_sync_to_airtable_for_woocommerce_exporter_state');
delete_site_option('orders_sync_to_airtable_for_woocommerce_exporter_state');
delete_option('orders_sync_to_airtable_for_woocommerce_exporter_settings');
delete_site_option('orders_sync_to_airtable_for_woocommerce_exporter_settings');
delete_option('orders_sync_to_airtable_for_woocommerce_check_chars');
delete_site_option('orders_sync_to_airtable_for_woocommerce_check_chars');

// Delete Transients
delete_transient('orders_sync_to_airtable_for_woocommerce_current_template_version');
delete_site_transient('orders_sync_to_airtable_for_woocommerce_current_template_version');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_orders_sync_to_airtable_for_woocommerce_site_health_check_%', '_site_transient_orders_sync_to_airtable_for_woocommerce_site_health_check_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

