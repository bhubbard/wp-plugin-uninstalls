<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tot_options');
delete_site_option('tot_options');
delete_option('tot_taxes_disabled_due_to_core');
delete_site_option('tot_taxes_disabled_due_to_core');
delete_option('tot_logs');
delete_site_option('tot_logs');
delete_option('tot_flash_notices');
delete_site_option('tot_flash_notices');
delete_option('tot_ssl_misconfiguration');
delete_site_option('tot_ssl_misconfiguration');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'tot_previous_plugin_version_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('tot_hook_log');
delete_site_option('tot_hook_log');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'tot-dismissed-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('tot_version');
delete_site_option('tot_version');
delete_option('old_tot_keys');
delete_site_option('old_tot_keys');
delete_option('tot_plugin_updates_log');
delete_site_option('tot_plugin_updates_log');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');
delete_option('tot-plugin-verification-tab');
delete_site_option('tot-plugin-verification-tab');
delete_option('tot-plugin-report-abuse-button');
delete_site_option('tot-plugin-report-abuse-button');
delete_option('tot-profile_tab_verification_roles-select');
delete_site_option('tot-profile_tab_verification_roles-select');
delete_option('tot-plugin-verification-permission');
delete_site_option('tot-plugin-verification-permission');
delete_option('tot-plugin-verification-tab-account');
delete_site_option('tot-plugin-verification-tab-account');
delete_option('tot-plugin-verified-indicator-account');
delete_site_option('tot-plugin-verified-indicator-account');
delete_option('um_options');
delete_site_option('um_options');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('pickup_location_pickup_locations');
delete_site_option('pickup_location_pickup_locations');
delete_option('tot_orders_to_sync');
delete_site_option('tot_orders_to_sync');

// Delete Transients
delete_transient('admin_access_token');
delete_site_transient('admin_access_token');
delete_transient('tot_keys');
delete_site_transient('tot_keys');
delete_transient('tot_license_error_state');
delete_site_transient('tot_license_error_state');
delete_transient('tot_license_already_handled');
delete_site_transient('tot_license_already_handled');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_tot_error_%', '_site_transient_tot_error_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_excise%', '_site_transient_excise%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('tot_get_faq_page');
wp_clear_scheduled_hook('tot_sync_orders');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tot_email_verification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tot_email_verification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tot_email_verification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tot_email_verification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tot_confirmation_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tot_confirmation_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tot_confirmation_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tot_confirmation_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tot_approval_status_log' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tot_approval_status_log' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tot_approval_status_log' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tot_approval_status_log' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tot_approval_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tot_approval_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tot_approval_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tot_approval_status' ) );

