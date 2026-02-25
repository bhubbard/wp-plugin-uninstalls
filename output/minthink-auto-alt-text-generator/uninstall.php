<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mt_auto_atg_site_id');
delete_site_option('mt_auto_atg_site_id');
delete_option('mt_auto_atg_welcome_dismissed');
delete_site_option('mt_auto_atg_welcome_dismissed');
delete_option('mt_auto_atg_activation_time');
delete_site_option('mt_auto_atg_activation_time');
delete_option('mt_auto_atg_external_service_notice_dismissed');
delete_site_option('mt_auto_atg_external_service_notice_dismissed');
delete_option('mt_auto_atg_feedback_dismissed');
delete_site_option('mt_auto_atg_feedback_dismissed');
delete_option('mt_auto_atg_feedback_shown');
delete_site_option('mt_auto_atg_feedback_shown');
delete_option('mt_auto_atg_low_credits_dismissed_month');
delete_site_option('mt_auto_atg_low_credits_dismissed_month');
delete_option('mt_auto_atg_low_credits_dismissed');
delete_site_option('mt_auto_atg_low_credits_dismissed');
delete_option('mt_auto_atg_last_server_ping');
delete_site_option('mt_auto_atg_last_server_ping');
delete_option('mt_auto_atg_user_email');
delete_site_option('mt_auto_atg_user_email');
delete_option('mt_auto_atg_is_pro');
delete_site_option('mt_auto_atg_is_pro');
delete_option('mt_auto_atg_debug_mode');
delete_site_option('mt_auto_atg_debug_mode');

// Delete Transients
delete_transient('mt_auto_atg_plugin_config');
delete_site_transient('mt_auto_atg_plugin_config');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_paid', '_site_transient_%_paid' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

