<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wlsm_delete_on_uninstall');
delete_site_option('wlsm_delete_on_uninstall');
delete_option('wlsm_current_session');
delete_site_option('wlsm_current_session');
delete_option('wlsm_currency');
delete_site_option('wlsm_currency');
delete_option('wlsm_date_format');
delete_site_option('wlsm_date_format');
delete_option('wlsm_gdpr_enable');
delete_site_option('wlsm_gdpr_enable');

// Clear Cron Jobs
wp_clear_scheduled_hook('wlsm_notify_for_invoice_generated');
wp_clear_scheduled_hook('wlsm_notify_for_offline_fee_submission');
wp_clear_scheduled_hook('wlsm_notify_for_student_admission');
wp_clear_scheduled_hook('wlsm_notify_for_online_fee_submission');
wp_clear_scheduled_hook('wlsm_notify_for_student_registration_to_student');
wp_clear_scheduled_hook('wlsm_notify_for_student_registration_to_admin');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wlsm_school_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wlsm_school_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wlsm_school_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wlsm_school_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wlsm_current_session' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wlsm_current_session' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wlsm_current_session' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wlsm_current_session' ) );

