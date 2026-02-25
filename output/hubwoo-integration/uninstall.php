<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mwb_hubwoo_guest_user_cart');
delete_site_option('mwb_hubwoo_guest_user_cart');
delete_option('hubwoo_pro_newgroups_saved');
delete_site_option('hubwoo_pro_newgroups_saved');
delete_option('hubwoo_lock');
delete_site_option('hubwoo_lock');
delete_option('hubwoo_setup_completed');
delete_site_option('hubwoo_setup_completed');
delete_option('hubwoo_alert_param_set');
delete_site_option('hubwoo_alert_param_set');
delete_option('hubwoo_oauth_success');
delete_site_option('hubwoo_oauth_success');
delete_option('hubwoo_valid_client_ids_stored');
delete_site_option('hubwoo_valid_client_ids_stored');
delete_option('hubwoo_free_property_update');
delete_site_option('hubwoo_free_property_update');
delete_option('hubwoo-free-success-api-calls');
delete_site_option('hubwoo-free-success-api-calls');
delete_option('hubwoo-free-error-api-calls');
delete_site_option('hubwoo-free-error-api-calls');
delete_option('hubwoo_invalid_emails');
delete_site_option('hubwoo_invalid_emails');
delete_option('hubwoo_abncart_added');
delete_site_option('hubwoo_abncart_added');
delete_option('hubwoo_suggestions_sent');
delete_site_option('hubwoo_suggestions_sent');
delete_option('hubwoo_token_expiry');
delete_site_option('hubwoo_token_expiry');
delete_option('hubwoo_suggestions_later');
delete_site_option('hubwoo_suggestions_later');
delete_option('hubwoo_free_version');
delete_site_option('hubwoo_free_version');
delete_option('hubwoo_newversion_groups_saved');
delete_site_option('hubwoo_newversion_groups_saved');
delete_option('hubwoo_get_started');
delete_site_option('hubwoo_get_started');
delete_option('hubwoo_refresh_token');
delete_site_option('hubwoo_refresh_token');
delete_option('hubwoo_access_token');
delete_site_option('hubwoo_access_token');
delete_option('hubwoo_ecomm_bridge_enabled');
delete_site_option('hubwoo_ecomm_bridge_enabled');
delete_option('hubwoo_send_suggestions');
delete_site_option('hubwoo_send_suggestions');
delete_option('hubwoo_api_validation_error_message');
delete_site_option('hubwoo_api_validation_error_message');
delete_option('hubwoo_account_scopes');
delete_site_option('hubwoo_account_scopes');
delete_option('hubwoo_log_enable');
delete_site_option('hubwoo_log_enable');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'hubwoo_active_group%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('hubwoo_settings_enable');
delete_site_option('hubwoo_settings_enable');
delete_option('hubwoo_owners_portal');
delete_site_option('hubwoo_owners_portal');

// Clear Cron Jobs
wp_clear_scheduled_hook('hubwoo_cron_schedule');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hubwoo_user_data_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hubwoo_user_data_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hubwoo_user_data_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hubwoo_user_data_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hubwoo_pro_user_cart_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hubwoo_pro_user_cart_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hubwoo_pro_user_cart_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hubwoo_pro_user_cart_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_customer_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_customer_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_customer_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_customer_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hubwoo_vid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hubwoo_vid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hubwoo_vid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hubwoo_vid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hubwoo_modified_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hubwoo_modified_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hubwoo_modified_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hubwoo_modified_fields' ) );

