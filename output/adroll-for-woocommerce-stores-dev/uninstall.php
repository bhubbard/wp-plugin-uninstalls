<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adroll_adv_eid');
delete_site_option('adroll_adv_eid');
delete_option('adroll_pixel_eid');
delete_site_option('adroll_pixel_eid');
delete_option('adroll_do_activation_redirect');
delete_site_option('adroll_do_activation_redirect');
delete_option('admin_notice_success');
delete_site_option('admin_notice_success');
delete_option('admin_notice_warning');
delete_site_option('admin_notice_warning');
delete_option('adroll_do_activation');
delete_site_option('adroll_do_activation');
delete_option('adroll_do_deactivation');
delete_site_option('adroll_do_deactivation');
delete_option('adroll_final_attempt_date');
delete_site_option('adroll_final_attempt_date');
delete_option('adroll_initial_setup_date');
delete_site_option('adroll_initial_setup_date');
delete_option('adroll_last_attempted_date');
delete_site_option('adroll_last_attempted_date');
delete_option('adroll_pixel_inject_attempts');
delete_site_option('adroll_pixel_inject_attempts');
delete_option('adroll_plugin_silenced');
delete_site_option('adroll_plugin_silenced');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'adroll_pixel_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'adroll_pixel_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'adroll_pixel_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'adroll_pixel_%' ) );

