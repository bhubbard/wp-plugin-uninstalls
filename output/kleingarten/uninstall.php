<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kleingarten_post_types_with_auto_likes_shortcode');
delete_site_option('kleingarten_post_types_with_auto_likes_shortcode');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('kleingarten_send_new_post_notification');
delete_site_option('kleingarten_send_new_post_notification');
delete_option('kleingarten_send_new_post_notification_post_type_selection');
delete_site_option('kleingarten_send_new_post_notification_post_type_selection');
delete_option('kleingarten_new_post_notification_subject');
delete_site_option('kleingarten_new_post_notification_subject');
delete_option('kleingarten_new_post_notification_message');
delete_site_option('kleingarten_new_post_notification_message');
delete_option('kleingarten_auto_likes_shortcode_position');
delete_site_option('kleingarten_auto_likes_shortcode_position');
delete_option('kleingarten_show_footer_credits');
delete_site_option('kleingarten_show_footer_credits');
delete_option('kleingarten_login_page');
delete_site_option('kleingarten_login_page');
delete_option('kleingarten_send_account_registration_notification');
delete_site_option('kleingarten_send_account_registration_notification');
delete_option('kleingarten_send_account_activation_notification');
delete_site_option('kleingarten_send_account_activation_notification');
delete_option('kleingarten_available_positions');
delete_site_option('kleingarten_available_positions');
delete_option('kleingarten_currency');
delete_site_option('kleingarten_currency');
delete_option('kleingarten_plot_billing_items');
delete_site_option('kleingarten_plot_billing_items');
delete_option('kleingarten_units_available_for_meters');
delete_site_option('kleingarten_units_available_for_meters');
delete_option('kleingarten_meter_types');
delete_site_option('kleingarten_meter_types');
delete_option('kleingarten_show_status_in_admin_menu');
delete_site_option('kleingarten_show_status_in_admin_menu');
delete_option('kleingarten_anti_spam_challenge');
delete_site_option('kleingarten_anti_spam_challenge');
delete_option('kleingarten_anti_spam_response');
delete_site_option('kleingarten_anti_spam_response');
delete_option('kleingarten_allotment_gardener');
delete_site_option('kleingarten_allotment_gardener');
delete_option('kleingarten_pending');
delete_site_option('kleingarten_pending');
delete_option('kleingarten_account_activation_notification_subject');
delete_site_option('kleingarten_account_activation_notification_subject');
delete_option('kleingarten_account_activation_notification_message');
delete_site_option('kleingarten_account_activation_notification_message');
delete_option('kleingarten_membership_billing_items');
delete_site_option('kleingarten_membership_billing_items');

// Delete Transients
delete_transient('kleingarten_post_meta_notices');
delete_site_transient('kleingarten_post_meta_notices');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'plot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'plot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'plot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'plot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'positions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'positions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'positions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'positions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'kleingarten_task_paricipants_hours' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'kleingarten_task_paricipants_hours' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'kleingarten_task_paricipants_hours' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'kleingarten_task_paricipants_hours' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'kleingarten_likes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'kleingarten_likes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'kleingarten_likes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'kleingarten_likes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'kleingarten_meter_assignment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'kleingarten_meter_assignment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'kleingarten_meter_assignment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'kleingarten_meter_assignment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_kleingarten_invoice_was_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_kleingarten_invoice_was_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_kleingarten_invoice_was_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_kleingarten_invoice_was_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'kleingarten_status_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'kleingarten_status_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'kleingarten_status_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'kleingarten_status_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'kleingarten_project_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'kleingarten_project_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'kleingarten_project_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'kleingarten_project_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'kleingarten_invoice_canceled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'kleingarten_invoice_canceled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'kleingarten_invoice_canceled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'kleingarten_invoice_canceled' ) );

