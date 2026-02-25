<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pisol_review_order_status');
delete_site_option('pisol_review_order_status');
delete_option('pisol_review_reminder_delay');
delete_site_option('pisol_review_reminder_delay');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_completed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pisol_review_from_date');
delete_site_option('pisol_review_from_date');
delete_option('pisol_review_to_date');
delete_site_option('pisol_review_to_date');
delete_option('pisol_review_enable_past_order_reminder');
delete_site_option('pisol_review_enable_past_order_reminder');
delete_option('pisol_review_reminder_rate');
delete_site_option('pisol_review_reminder_rate');
delete_option('pisol_review_flush_endpoint');
delete_site_option('pisol_review_flush_endpoint');
delete_option('pisol_review_reminder_email_from_address');
delete_site_option('pisol_review_reminder_email_from_address');
delete_option('pisol_review_reminder_email_from');
delete_site_option('pisol_review_reminder_email_from');
delete_option('pisol_review_reminder_email_reply_address');
delete_site_option('pisol_review_reminder_email_reply_address');
delete_option('pisol_review_unsubscribe');
delete_site_option('pisol_review_unsubscribe');
delete_option('pisol_review_unsubscribe_link_text');
delete_site_option('pisol_review_unsubscribe_link_text');
delete_option('pisol_review_reminder_email_subject');
delete_site_option('pisol_review_reminder_email_subject');
delete_option('pisol_review_reminder_email_heading');
delete_site_option('pisol_review_reminder_email_heading');
delete_option('pisol_review_reminder_email_body');
delete_site_option('pisol_review_reminder_email_body');
delete_option('pisol_review_reminder_email_unsubscribe_text');
delete_site_option('pisol_review_reminder_email_unsubscribe_text');
delete_option('pisol_review_manual_reminder');
delete_site_option('pisol_review_manual_reminder');
delete_option('pisol_review_automatic_reminder');
delete_site_option('pisol_review_automatic_reminder');
delete_option('pisol_review_reminder_email_footer');
delete_site_option('pisol_review_reminder_email_footer');
delete_option('pi_review_activation_redirect');
delete_site_option('pi_review_activation_redirect');
delete_option('pisol_review_show_order_review_section');
delete_site_option('pisol_review_show_order_review_section');
delete_option('pisol_review_end_point');
delete_site_option('pisol_review_end_point');
delete_option('pisol_review_end_point_text');
delete_site_option('pisol_review_end_point_text');
delete_option('pisol_review_template');
delete_site_option('pisol_review_template');
delete_option('pisol_review_display_verified_tag');
delete_site_option('pisol_review_display_verified_tag');
delete_option('pisol_review_display_form');
delete_site_option('pisol_review_display_form');
delete_option('pisol_review_show_review_tab');
delete_site_option('pisol_review_show_review_tab');
delete_option('pisol_review_reminder_permission');
delete_site_option('pisol_review_reminder_permission');
delete_option('pisol_review_load_more');
delete_site_option('pisol_review_load_more');
delete_option('pisol_review_moderation');
delete_site_option('pisol_review_moderation');
delete_option('pisol_review_form_title');
delete_site_option('pisol_review_form_title');
delete_option('pisol_review_form_description');
delete_site_option('pisol_review_form_description');
delete_option('pisol_review_form_submit');
delete_site_option('pisol_review_form_submit');
delete_option('pisol_review_form_review_placeholder');
delete_site_option('pisol_review_form_review_placeholder');
delete_option('pisol_review_form_success_msg');
delete_site_option('pisol_review_form_success_msg');
delete_option('pisol_review_form_rating_error');
delete_site_option('pisol_review_form_rating_error');
delete_option('pisol_review_form_review_error');
delete_site_option('pisol_review_form_review_error');
delete_option('pisol_review_required');
delete_site_option('pisol_review_required');
delete_option('pisol_review_default_rating');
delete_site_option('pisol_review_default_rating');
delete_option('pisol_review_form_logo');
delete_site_option('pisol_review_form_logo');
delete_option('pisol_review_logo_alignment');
delete_site_option('pisol_review_logo_alignment');
delete_option('pisol_review_min_char_length');
delete_site_option('pisol_review_min_char_length');
delete_option('pisol_review_max_char_length');
delete_site_option('pisol_review_max_char_length');
delete_option('pisol_review_loaded_review');
delete_site_option('pisol_review_loaded_review');
delete_option('pisol_review_reminder_permission_required');
delete_site_option('pisol_review_reminder_permission_required');
delete_option('pisol_review_permission_text');
delete_site_option('pisol_review_permission_text');

// Clear Cron Jobs
wp_clear_scheduled_hook('pisol_review_send_auto_reminder');
wp_clear_scheduled_hook('pisol_review_send_past_order_reminder');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'review_parameters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'review_parameters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'review_parameters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'review_parameters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'required' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'required' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'required' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'required' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'default_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'default_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'default_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'default_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rating' ) );

