<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('w91099ch_w9_page_id');
delete_site_option('w91099ch_w9_page_id');
delete_option('w91099ch_manual_plugins');
delete_site_option('w91099ch_manual_plugins');
delete_option('w91099ch_hidden_plugins');
delete_site_option('w91099ch_hidden_plugins');
delete_option('w91099ch_profile_last_sync');
delete_site_option('w91099ch_profile_last_sync');
delete_option('w91099ch_plugin_last_sync');
delete_site_option('w91099ch_plugin_last_sync');
delete_option('w91099ch_affiliates_last_sync');
delete_site_option('w91099ch_affiliates_last_sync');
delete_option('w91099ch_affiliates_count');
delete_site_option('w91099ch_affiliates_count');
delete_option('w91099ch_user_email');
delete_site_option('w91099ch_user_email');
delete_option('w91099ch_admin_consent');
delete_site_option('w91099ch_admin_consent');
delete_option('w91099ch_credentials_valid');
delete_site_option('w91099ch_credentials_valid');
delete_option('w91099ch_site_url');
delete_site_option('w91099ch_site_url');
delete_option('w91099ch_connected_at');
delete_site_option('w91099ch_connected_at');
delete_option('w91099ch_last_checked');
delete_site_option('w91099ch_last_checked');
delete_option('w91099ch_team_last_sync');
delete_site_option('w91099ch_team_last_sync');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('w91099ch_debug_logging');
delete_site_option('w91099ch_debug_logging');
delete_option('w91099ch_excluded_affiliate_ids');
delete_site_option('w91099ch_excluded_affiliate_ids');
delete_option('w91099ch_active_plugins_snapshot');
delete_site_option('w91099ch_active_plugins_snapshot');
delete_option('w91099ch_plugins_last_sync');
delete_site_option('w91099ch_plugins_last_sync');
delete_option('w91099ch_credentials');
delete_site_option('w91099ch_credentials');
delete_option('w91099ch_connected');
delete_site_option('w91099ch_connected');
delete_option('w91099ch_client_id');
delete_site_option('w91099ch_client_id');
delete_option('w91099ch_client_secret');
delete_site_option('w91099ch_client_secret');
delete_option('w91099ch_access_token');
delete_site_option('w91099ch_access_token');
delete_option('w91099ch_refresh_token');
delete_site_option('w91099ch_refresh_token');
delete_option('w91099ch_db_version');
delete_site_option('w91099ch_db_version');
delete_option('w91099ch_encryption_key');
delete_site_option('w91099ch_encryption_key');
delete_option('w91099ch_workspace');
delete_site_option('w91099ch_workspace');
delete_option('w91099ch_excluded_forms');
delete_site_option('w91099ch_excluded_forms');

// Delete Transients
delete_transient('w91099ch_activated');
delete_site_transient('w91099ch_activated');
delete_transient('w91099ch_connection_error');
delete_site_transient('w91099ch_connection_error');
delete_transient('w91099ch_connection_success');
delete_site_transient('w91099ch_connection_success');
delete_transient('w91099ch_handshake_active');
delete_site_transient('w91099ch_handshake_active');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_w91099ch_pending_credentials_%', '_site_transient_w91099ch_pending_credentials_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_w91099ch_private_key_%', '_site_transient_w91099ch_private_key_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('w91099ch_sync_affiliates_cron');
wp_clear_scheduled_hook('w91099ch_daily_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wcv_store_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wcv_store_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wcv_store_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wcv_store_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dokan_store_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dokan_store_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dokan_store_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dokan_store_name' ) );

