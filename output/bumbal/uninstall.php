<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bumbal_multiday_active');
delete_site_option('bumbal_multiday_active');
delete_option('bumbal_timeslot_position');
delete_site_option('bumbal_timeslot_position');
delete_option('bumbal_instance');
delete_site_option('bumbal_instance');
delete_option('bumbal_apikey');
delete_site_option('bumbal_apikey');
delete_option('bumbal_status_send');
delete_site_option('bumbal_status_send');
delete_option('bumbal_custom_send_activity_hook');
delete_site_option('bumbal_custom_send_activity_hook');
delete_option('bumbal_timeslot_hook');
delete_site_option('bumbal_timeslot_hook');
delete_option('bumbal_ACF_plugin');
delete_site_option('bumbal_ACF_plugin');
delete_option('bumbal_external_datamapper');
delete_site_option('bumbal_external_datamapper');
delete_option('bumbal_shop_name');
delete_site_option('bumbal_shop_name');
delete_option('bumbal_timeslots_form');
delete_site_option('bumbal_timeslots_form');
delete_option('bumbal_multiday_start_time');
delete_site_option('bumbal_multiday_start_time');
delete_option('bumbal_multiday_end_time');
delete_site_option('bumbal_multiday_end_time');
delete_option('bumbal_multiday_send_invite');
delete_site_option('bumbal_multiday_send_invite');
delete_option('bumbal_multiday_send_reminder');
delete_site_option('bumbal_multiday_send_reminder');
delete_option('bumbal_multiday_send_confirmation');
delete_site_option('bumbal_multiday_send_confirmation');
delete_option('bumbal_multiday_send_planned');
delete_site_option('bumbal_multiday_send_planned');
delete_option('bumbal_multiday_send_eta');
delete_site_option('bumbal_multiday_send_eta');
delete_option('bumbal_multiday_send_executed');
delete_site_option('bumbal_multiday_send_executed');
delete_option('bumbal_multiday_send_cancelled');
delete_site_option('bumbal_multiday_send_cancelled');
delete_option('bumbal_timeslot_thankyou_text');
delete_site_option('bumbal_timeslot_thankyou_text');
delete_option('bumbal_send_invite_after_error');
delete_site_option('bumbal_send_invite_after_error');
delete_option('bumbal_status_change');
delete_site_option('bumbal_status_change');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bumbal_shipping_instance_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bumbal_ignore_shippingclass');
delete_site_option('bumbal_ignore_shippingclass');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bumbal_shipping_class_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bumbal_send_invite');
delete_site_option('bumbal_send_invite');
delete_option('bumbal_send_reminder');
delete_site_option('bumbal_send_reminder');
delete_option('bumbal_send_confirmation');
delete_site_option('bumbal_send_confirmation');
delete_option('bumbal_send_planned');
delete_site_option('bumbal_send_planned');
delete_option('bumbal_send_eta');
delete_site_option('bumbal_send_eta');
delete_option('bumbal_send_executed');
delete_site_option('bumbal_send_executed');
delete_option('bumbal_send_cancelled');
delete_site_option('bumbal_send_cancelled');
delete_option('bumbal_send_packagelines_as_notes');
delete_site_option('bumbal_send_packagelines_as_notes');
delete_option('bumbal_timeslot_text');
delete_site_option('bumbal_timeslot_text');
delete_option('bumbal_timeslots_show_time');
delete_site_option('bumbal_timeslots_show_time');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'BumbalTimeSlotResponse' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'BumbalTimeSlotResponse' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'BumbalTimeSlotResponse' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'BumbalTimeSlotResponse' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'BumbalStatus' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'BumbalStatus' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'BumbalStatus' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'BumbalStatus' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'BumbalRoute' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'BumbalRoute' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'BumbalRoute' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'BumbalRoute' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'BumbalRetrieveTimeSlotError' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'BumbalRetrieveTimeSlotError' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'BumbalRetrieveTimeSlotError' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'BumbalRetrieveTimeSlotError' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'BumbalAPIresponse' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'BumbalAPIresponse' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'BumbalAPIresponse' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'BumbalAPIresponse' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'BumbalAPIcall' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'BumbalAPIcall' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'BumbalAPIcall' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'BumbalAPIcall' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'BumbalApiError' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'BumbalApiError' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'BumbalApiError' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'BumbalApiError' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'MultiDayResponse' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'MultiDayResponse' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'MultiDayResponse' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'MultiDayResponse' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'MultiDayCall' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'MultiDayCall' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'MultiDayCall' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'MultiDayCall' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'BumbalCancelOrderError' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'BumbalCancelOrderError' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'BumbalCancelOrderError' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'BumbalCancelOrderError' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'BumbalDeleteOrderError' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'BumbalDeleteOrderError' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'BumbalDeleteOrderError' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'BumbalDeleteOrderError' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bumbal_shipping_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bumbal_shipping_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bumbal_shipping_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bumbal_shipping_time' ) );

