<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dbem_gmap_is_active');
delete_site_option('dbem_gmap_is_active');
delete_option('dbem_search_form_geo');
delete_site_option('dbem_search_form_geo');
delete_option('dbem_events_anonymous_submissions');
delete_site_option('dbem_events_anonymous_submissions');
delete_option('dbem_events_anonymous_user');
delete_site_option('dbem_events_anonymous_user');
delete_option('dbem_ms_mainblog_locations');
delete_site_option('dbem_ms_mainblog_locations');
delete_option('dbem_map_default_width');
delete_site_option('dbem_map_default_width');
delete_option('dbem_map_default_height');
delete_site_option('dbem_map_default_height');
delete_option('dbem_location_baloon_format');
delete_site_option('dbem_location_baloon_format');
delete_option('dbem_map_text_format');
delete_site_option('dbem_map_text_format');
delete_option('dbem_use_select_for_locations');
delete_site_option('dbem_use_select_for_locations');
delete_option('dbem_require_location');
delete_site_option('dbem_require_location');
delete_option('dbem_events_form_result_success');
delete_site_option('dbem_events_form_result_success');
delete_option('dbem_events_form_result_success_updated');
delete_site_option('dbem_events_form_result_success_updated');
delete_option('dbem_events_anonymous_result_success');
delete_site_option('dbem_events_anonymous_result_success');
delete_option('dbem_bookings_anonymous');
delete_site_option('dbem_bookings_anonymous');
delete_option('dbem_bookings_double');
delete_site_option('dbem_bookings_double');
delete_option('dbem_booking_feedback_already_booked');
delete_site_option('dbem_booking_feedback_already_booked');
delete_option('dbem_bookings_user_cancellation');
delete_site_option('dbem_bookings_user_cancellation');
delete_option('dbem_booking_feedback_cancelled');
delete_site_option('dbem_booking_feedback_cancelled');
delete_option('dbem_booking_feedback_log_in');
delete_site_option('dbem_booking_feedback_log_in');
delete_option('dbem_search_form_states_label');
delete_site_option('dbem_search_form_states_label');
delete_option('dbem_search_form_towns_label');
delete_site_option('dbem_search_form_towns_label');
delete_option('dbem_search_form_regions_label');
delete_site_option('dbem_search_form_regions_label');
delete_option('dbem_events_page_scope');
delete_site_option('dbem_events_page_scope');
delete_option('dbem_events_default_limit');
delete_site_option('dbem_events_default_limit');
delete_option('dbem_locations_default_limit');
delete_site_option('dbem_locations_default_limit');
delete_option('dbem_tags_default_limit');
delete_site_option('dbem_tags_default_limit');
delete_option('dbem_categories_default_limit');
delete_site_option('dbem_categories_default_limit');
delete_option('dbem_bookings_currency');
delete_site_option('dbem_bookings_currency');
delete_option('dbem_data_privacy_consent_text');
delete_site_option('dbem_data_privacy_consent_text');
delete_option('stonehenge_forums');
delete_site_option('stonehenge_forums');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('em_email_users');
delete_site_option('em_email_users');
delete_option('dbem_mail_sender_name');
delete_site_option('dbem_mail_sender_name');
delete_option('dbem_mail_sender_address');
delete_site_option('dbem_mail_sender_address');
delete_option('dbem_rsvp_mail_send_method');
delete_site_option('dbem_rsvp_mail_send_method');
delete_option('dbem_smtp_host');
delete_site_option('dbem_smtp_host');
delete_option('dbem_rsvp_mail_port');
delete_site_option('dbem_rsvp_mail_port');
delete_option('dbem_smtp_username');
delete_site_option('dbem_smtp_username');
delete_option('dbem_smtp_password');
delete_site_option('dbem_smtp_password');
delete_option('dbem_smtp_encryption');
delete_site_option('dbem_smtp_encryption');
delete_option('dbem_rsvp_mail_SMTPAuth');
delete_site_option('dbem_rsvp_mail_SMTPAuth');
delete_option('dbem_smtp_autotls');
delete_site_option('dbem_smtp_autotls');

// Delete Transients
delete_transient('stonehenge_creations_plugins_feed');
delete_site_transient('stonehenge_creations_plugins_feed');

// Clear Cron Jobs
wp_clear_scheduled_hook('stonehenge_creations_licenses');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_location_map_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_location_map_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_location_map_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_location_map_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_location_marker_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_location_marker_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_location_marker_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_location_marker_color' ) );

