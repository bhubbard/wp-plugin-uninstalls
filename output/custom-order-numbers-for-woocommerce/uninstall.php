<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_custom_order_numbers_version');
delete_site_option('alg_custom_order_numbers_version');
delete_option('alg_custom_order_numbers_show_admin_notice');
delete_site_option('alg_custom_order_numbers_show_admin_notice');
delete_option('alg_custom_order_numbers_no_meta_admin_notice');
delete_site_option('alg_custom_order_numbers_no_meta_admin_notice');
delete_option('alg_wc_custom_order_numbers_hide_tab_for_roles');
delete_site_option('alg_wc_custom_order_numbers_hide_tab_for_roles');
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
delete_option('con_lite_allow_tracking');
delete_site_option('con_lite_allow_tracking');
delete_option('alg_wc_custom_order_numbers_enabled');
delete_site_option('alg_wc_custom_order_numbers_enabled');
delete_option('alg_wc_custom_order_numbers_order_tracking_enabled');
delete_site_option('alg_wc_custom_order_numbers_order_tracking_enabled');
delete_option('alg_custom_order_numbers_new_order_time');
delete_site_option('alg_custom_order_numbers_new_order_time');
delete_option('alg_custom_order_numbers_update_database');
delete_site_option('alg_custom_order_numbers_update_database');
delete_option('alg_custom_order_number_old_orders_to_update_meta_key');
delete_site_option('alg_custom_order_number_old_orders_to_update_meta_key');
delete_option('alg_custom_order_numbers_update_meta_key_in_database');
delete_site_option('alg_custom_order_numbers_update_meta_key_in_database');
delete_option('alg_custom_order_numbers_time_of_update_now');
delete_site_option('alg_custom_order_numbers_time_of_update_now');
delete_option('alg_custom_order_numbers_meta_key_time_of_update_now');
delete_site_option('alg_custom_order_numbers_meta_key_time_of_update_now');
delete_option('alg_custom_order_numbers_no_old_orders_to_update');
delete_site_option('alg_custom_order_numbers_no_old_orders_to_update');
delete_option('alg_wc_custom_order_numbers_prefix');
delete_site_option('alg_wc_custom_order_numbers_prefix');
delete_option('alg_wc_custom_order_numbers_date_prefix');
delete_site_option('alg_wc_custom_order_numbers_date_prefix');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('alg_custom_order_number_no_old_con_without_meta_key');
delete_site_option('alg_custom_order_number_no_old_con_without_meta_key');
delete_option('alg_custom_order_number_no_old_orders_to_update_meta_key');
delete_site_option('alg_custom_order_number_no_old_orders_to_update_meta_key');
delete_option('alg_custom_order_numbers_success_notice');
delete_site_option('alg_custom_order_numbers_success_notice');
delete_option('alg_custom_order_numbers_success_notice_for_meta_key');
delete_site_option('alg_custom_order_numbers_success_notice_for_meta_key');
delete_option('alg_wc_custom_order_numbers_prefix_suffix_changed');
delete_site_option('alg_wc_custom_order_numbers_prefix_suffix_changed');
delete_option('alg_wc_custom_order_numbers_settings_to_apply');
delete_site_option('alg_wc_custom_order_numbers_settings_to_apply');
delete_option('alg_wc_custom_order_numbers_settings_to_apply_from_date');
delete_site_option('alg_wc_custom_order_numbers_settings_to_apply_from_date');
delete_option('alg_wc_custom_order_numbers_settings_to_apply_from_order_id');
delete_site_option('alg_wc_custom_order_numbers_settings_to_apply_from_order_id');
delete_option('alg_wc_custom_order_numbers_counter_reset_enabled');
delete_site_option('alg_wc_custom_order_numbers_counter_reset_enabled');
delete_option('alg_wc_custom_order_numbers_counter_previous_order_date');
delete_site_option('alg_wc_custom_order_numbers_counter_previous_order_date');
delete_option('alg_wc_custom_order_numbers_counter_reset_counter_value');
delete_site_option('alg_wc_custom_order_numbers_counter_reset_counter_value');
delete_option('alg_wc_custom_order_numbers_hide_menu_for_roles');
delete_site_option('alg_wc_custom_order_numbers_hide_menu_for_roles');
delete_option('alg_wc_custom_order_numbers_counter');
delete_site_option('alg_wc_custom_order_numbers_counter');
delete_option('alg_wc_custom_order_numbers_counter_type');
delete_site_option('alg_wc_custom_order_numbers_counter_type');
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
delete_option('alg_wc_custom_order_numbers_min_width');
delete_site_option('alg_wc_custom_order_numbers_min_width');
delete_option('alg_wc_custom_order_numbers_suffix');
delete_site_option('alg_wc_custom_order_numbers_suffix');
delete_option('alg_wc_custom_order_numbers_date_suffix');
delete_site_option('alg_wc_custom_order_numbers_date_suffix');
delete_option('alg_wc_custom_order_numbers_template');
delete_site_option('alg_wc_custom_order_numbers_template');
delete_option('alg_wc_custom_order_numbers_search_by_custom_number_enabled');
delete_site_option('alg_wc_custom_order_numbers_search_by_custom_number_enabled');
delete_option('alg_wc_custom_order_numbers_manual_enabled');
delete_site_option('alg_wc_custom_order_numbers_manual_enabled');
delete_option('alg_wc_custom_order_numbers__reset');
delete_site_option('alg_wc_custom_order_numbers__reset');
delete_option('edd_license_key_con');
delete_site_option('edd_license_key_con');

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_alg_wc_custom_order_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_alg_wc_custom_order_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_alg_wc_custom_order_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_alg_wc_custom_order_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_alg_wc_full_custom_order_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_alg_wc_full_custom_order_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_alg_wc_full_custom_order_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_alg_wc_full_custom_order_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_alg_wc_custom_order_number_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_alg_wc_custom_order_number_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_alg_wc_custom_order_number_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_alg_wc_custom_order_number_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_alg_wc_custom_order_number_meta_key_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_alg_wc_custom_order_number_meta_key_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_alg_wc_custom_order_number_meta_key_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_alg_wc_custom_order_number_meta_key_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'subscription_orders_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'subscription_orders_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'subscription_orders_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'subscription_orders_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'new_orders_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'new_orders_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'new_orders_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'new_orders_updated' ) );

