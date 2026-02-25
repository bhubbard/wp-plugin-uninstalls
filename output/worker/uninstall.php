<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mmb_stats_filter');
delete_site_option('mmb_stats_filter');
delete_option('mwp_incremental_update_active');
delete_site_option('mwp_incremental_update_active');
delete_option('mwp_worker_brand');
delete_site_option('mwp_worker_brand');
delete_option('mwp_maintenace_mode');
delete_site_option('mwp_maintenace_mode');
delete_option('mwp_core_autoupdate');
delete_site_option('mwp_core_autoupdate');
delete_option('mwp_recovering');
delete_site_option('mwp_recovering');
delete_option('mwp_container_parameters');
delete_site_option('mwp_container_parameters');
delete_option('mwp_container_site_parameters');
delete_site_option('mwp_container_site_parameters');
delete_option('mwp_service_key');
delete_site_option('mwp_service_key');
delete_option('mwp_incremental_recover_lock');
delete_site_option('mwp_incremental_recover_lock');
delete_option('mmb_network_admin_install');
delete_site_option('mmb_network_admin_install');
delete_option('_worker_public_key');
delete_site_option('_worker_public_key');
delete_option('_worker_nossl_key');
delete_site_option('_worker_nossl_key');
delete_option('_action_message_id');
delete_site_option('_action_message_id');
delete_option('mwp_notifications');
delete_site_option('mwp_notifications');
delete_option('mwp_worker_configuration');
delete_site_option('mwp_worker_configuration');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_site_transient_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_db_version');
delete_site_option('woocommerce_db_version');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('user_hit_count');
delete_site_option('user_hit_count');

// Delete Transients
delete_transient('mwp_recovery_key');
delete_site_transient('mwp_recovery_key');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_n_%', '_site_transient_n_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('mwp_auto_update');
wp_clear_scheduled_hook('mwp_check_for_post_update');
wp_clear_scheduled_hook('mwp_update_public_keys');
wp_clear_scheduled_hook('mwp_backup_tasks');
wp_clear_scheduled_hook('mwp_notifications');
wp_clear_scheduled_hook('mwp_datasend');

