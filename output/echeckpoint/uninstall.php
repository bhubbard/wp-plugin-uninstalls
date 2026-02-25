<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eCheckpoint_pre_settings');
delete_site_option('eCheckpoint_pre_settings');
delete_option('eCheckpoint_enable_50_state_fee');
delete_site_option('eCheckpoint_enable_50_state_fee');
delete_option('eCheckpoint_fee_percentage');
delete_site_option('eCheckpoint_fee_percentage');
delete_option('eCheckpoint_minimum_fee_per_item');
delete_site_option('eCheckpoint_minimum_fee_per_item');
delete_option('eCheckpoint_maximum_fee_per_item');
delete_site_option('eCheckpoint_maximum_fee_per_item');
delete_option('eCheckpoint_calculate_fee_on_multiples');
delete_site_option('eCheckpoint_calculate_fee_on_multiples');
delete_option('eCheckpoint_compliance_fee_message');
delete_site_option('eCheckpoint_compliance_fee_message');
delete_option('eCheckpoint_excluded_states');
delete_site_option('eCheckpoint_excluded_states');
delete_option('eCheckpoint_API_Key_Value');
delete_site_option('eCheckpoint_API_Key_Value');
delete_option('eCheckpoint_Message_Checkbox_Value');
delete_site_option('eCheckpoint_Message_Checkbox_Value');
delete_option('eCheckpoint_OnHold_Checkbox_Value');
delete_site_option('eCheckpoint_OnHold_Checkbox_Value');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shipping_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shipping_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shipping_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shipping_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'customer_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'customer_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'customer_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'customer_type' ) );

