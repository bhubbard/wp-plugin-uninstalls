<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blpaczka_sandbox_mode');
delete_site_option('blpaczka_sandbox_mode');
delete_option('blpaczka_auth_login');
delete_site_option('blpaczka_auth_login');
delete_option('blpaczka_auth_key');
delete_site_option('blpaczka_auth_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('blpaczka_auto_prepaid_insurance');
delete_site_option('blpaczka_auto_prepaid_insurance');
delete_option('blpaczka_fixed_prepaid_insurance');
delete_site_option('blpaczka_fixed_prepaid_insurance');
delete_option('blpaczka_auto_cod_insurance');
delete_site_option('blpaczka_auto_cod_insurance');
delete_option('blpaczka_fixed_cod_insurance');
delete_site_option('blpaczka_fixed_cod_insurance');
delete_option('blpaczka_templates');
delete_site_option('blpaczka_templates');
delete_option('blpaczka_package_courier');
delete_site_option('blpaczka_package_courier');
delete_option('blpaczka_package_weight');
delete_site_option('blpaczka_package_weight');
delete_option('blpaczka_package_length');
delete_site_option('blpaczka_package_length');
delete_option('blpaczka_package_width');
delete_site_option('blpaczka_package_width');
delete_option('blpaczka_package_height');
delete_site_option('blpaczka_package_height');
delete_option('blpaczka_package_content');
delete_site_option('blpaczka_package_content');
delete_option('blpaczka_package_sortable');
delete_site_option('blpaczka_package_sortable');
delete_option('blpaczka_package_no_pickup');
delete_site_option('blpaczka_package_no_pickup');
delete_option('blpaczka_package_pickup_ready_time');
delete_site_option('blpaczka_package_pickup_ready_time');
delete_option('blpaczka_package_pickup_close_time');
delete_site_option('blpaczka_package_pickup_close_time');
delete_option('blpaczka_sender_name');
delete_site_option('blpaczka_sender_name');
delete_option('blpaczka_sender_company');
delete_site_option('blpaczka_sender_company');
delete_option('blpaczka_sender_email');
delete_site_option('blpaczka_sender_email');
delete_option('blpaczka_sender_street');
delete_site_option('blpaczka_sender_street');
delete_option('blpaczka_sender_house_no');
delete_site_option('blpaczka_sender_house_no');
delete_option('blpaczka_sender_locum_no');
delete_site_option('blpaczka_sender_locum_no');
delete_option('blpaczka_sender_postal');
delete_site_option('blpaczka_sender_postal');
delete_option('blpaczka_sender_city');
delete_site_option('blpaczka_sender_city');
delete_option('blpaczka_sender_phone');
delete_site_option('blpaczka_sender_phone');
delete_option('blpaczka_sender_account');
delete_site_option('blpaczka_sender_account');
delete_option('blpaczka_package_payment');
delete_site_option('blpaczka_package_payment');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'blpaczka_selected_point' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'blpaczka_selected_point' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'blpaczka_selected_point' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'blpaczka_selected_point' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'BLPACZKA_blpaczka_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'BLPACZKA_blpaczka_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'BLPACZKA_blpaczka_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'BLPACZKA_blpaczka_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'BLPACZKA_blpaczka_waybill_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'BLPACZKA_blpaczka_waybill_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'BLPACZKA_blpaczka_waybill_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'BLPACZKA_blpaczka_waybill_link' ) );

