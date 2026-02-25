<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_custom_order_statuses_version');
delete_site_option('alg_custom_order_statuses_version');
delete_option('alg_orders_custom_statuses_enable_column_colored');
delete_site_option('alg_orders_custom_statuses_enable_column_colored');
delete_option('alg_orders_custom_statuses_enable_paid');
delete_site_option('alg_orders_custom_statuses_enable_paid');
delete_option('alg_orders_custom_statuses_enable_editable');
delete_site_option('alg_orders_custom_statuses_enable_editable');
delete_option('alg_orders_custom_statuses_emails_address');
delete_site_option('alg_orders_custom_statuses_emails_address');
delete_option('alg_orders_custom_statuses_array');
delete_site_option('alg_orders_custom_statuses_array');
delete_option('alg_orders_custom_statuses_filters_priority');
delete_site_option('alg_orders_custom_statuses_filters_priority');
delete_option('alg_orders_custom_statuses_add_to_reports');
delete_site_option('alg_orders_custom_statuses_add_to_reports');
delete_option('alg_orders_custom_statuses_add_to_bulk_actions');
delete_site_option('alg_orders_custom_statuses_add_to_bulk_actions');
delete_option('alg_orders_custom_statuses_emails_enabled');
delete_site_option('alg_orders_custom_statuses_emails_enabled');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('alg_orders_custom_statuses_emails_statuses');
delete_site_option('alg_orders_custom_statuses_emails_statuses');
delete_option('alg_orders_custom_statuses_emails_subject');
delete_site_option('alg_orders_custom_statuses_emails_subject');
delete_option('alg_orders_custom_statuses_emails_heading');
delete_site_option('alg_orders_custom_statuses_emails_heading');
delete_option('alg_orders_custom_statuses_emails_content');
delete_site_option('alg_orders_custom_statuses_emails_content');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_orders_custom_status_icon_data_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_orders_custom_statuses_default_status_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_orders_custom_statuses_default_status');
delete_site_option('alg_orders_custom_statuses_default_status');
delete_option('is_statuses_migrated');
delete_site_option('is_statuses_migrated');
delete_option('alg_orders_custom_statuses_fallback_delete_status');
delete_site_option('alg_orders_custom_statuses_fallback_delete_status');
delete_option('is_statuses_migrated_to_slug');
delete_site_option('is_statuses_migrated_to_slug');
delete_option('alg_custom_order_status_no_empty_slug_field');
delete_site_option('alg_custom_order_status_no_empty_slug_field');
delete_option('alg_orders_custom_statuses_default_status_bacs');
delete_site_option('alg_orders_custom_statuses_default_status_bacs');
delete_option('alg_orders_custom_statuses_default_status_cheque');
delete_site_option('alg_orders_custom_statuses_default_status_cheque');
delete_option('alg_orders_custom_statuses_default_status_cod');
delete_site_option('alg_orders_custom_statuses_default_status_cod');
delete_option('alg_orders_custom_statuses_default_status_paypal');
delete_site_option('alg_orders_custom_statuses_default_status_paypal');
delete_option('alg_orders_custom_statuses_bcc_emails_address');
delete_site_option('alg_orders_custom_statuses_bcc_emails_address');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ts_tracker_last_send');
delete_site_option('ts_tracker_last_send');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset_usage_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cos_lite_allow_tracking');
delete_site_option('cos_lite_allow_tracking');
delete_option('alg_orders_custom_statuses_add_to_order_list_actions');
delete_site_option('alg_orders_custom_statuses_add_to_order_list_actions');
delete_option('alg_orders_custom_statuses_add_to_order_list_actions_colored');
delete_site_option('alg_orders_custom_statuses_add_to_order_list_actions_colored');
delete_option('alg_orders_custom_statuses_add_to_order_preview_actions');
delete_site_option('alg_orders_custom_statuses_add_to_order_preview_actions');
delete_option('edd_license_key_cos');
delete_site_option('edd_license_key_cos');

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'status_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'status_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'status_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'status_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'alg_orders_individual_custom_status_enable_paid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'alg_orders_individual_custom_status_enable_paid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'alg_orders_individual_custom_status_enable_paid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'alg_orders_individual_custom_status_enable_paid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'text_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'text_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'text_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'text_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'alg_cos_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'alg_cos_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'alg_cos_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'alg_cos_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'alg_orders_individual_custom_status_user_cancel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'alg_orders_individual_custom_status_user_cancel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'alg_orders_individual_custom_status_user_cancel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'alg_orders_individual_custom_status_user_cancel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'alg_orders_custom_statuses_emails_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'alg_orders_custom_statuses_emails_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'alg_orders_custom_statuses_emails_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'alg_orders_custom_statuses_emails_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'alg_orders_custom_statuses_emails_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'alg_orders_custom_statuses_emails_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'alg_orders_custom_statuses_emails_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'alg_orders_custom_statuses_emails_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'alg_orders_custom_statuses_emails_subject' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'alg_orders_custom_statuses_emails_subject' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'alg_orders_custom_statuses_emails_subject' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'alg_orders_custom_statuses_emails_subject' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'alg_orders_custom_statuses_emails_heading' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'alg_orders_custom_statuses_emails_heading' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'alg_orders_custom_statuses_emails_heading' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'alg_orders_custom_statuses_emails_heading' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'alg_orders_custom_statuses_emails_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'alg_orders_custom_statuses_emails_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'alg_orders_custom_statuses_emails_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'alg_orders_custom_statuses_emails_content' ) );

