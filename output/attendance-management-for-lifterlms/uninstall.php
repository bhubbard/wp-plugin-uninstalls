<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('llmsat_version');
delete_site_option('llmsat_version');
delete_option('llmsat_migration_status');
delete_site_option('llmsat_migration_status');
delete_option('llmsat_db_version');
delete_site_option('llmsat_db_version');
delete_option('llms_integration_lifterlms_attendance_enabled');
delete_site_option('llms_integration_lifterlms_attendance_enabled');
delete_option('llmsat_use_custom_table');
delete_site_option('llmsat_use_custom_table');
delete_option('llms_integration_global_attendance_enabled');
delete_site_option('llms_integration_global_attendance_enabled');
delete_option('llms_integration_attendance_marking_roles');
delete_site_option('llms_integration_attendance_marking_roles');
delete_option('llms_integration_reporting_enabled');
delete_site_option('llms_integration_reporting_enabled');
delete_option('llms_integration_auto_refresh_enabled');
delete_site_option('llms_integration_auto_refresh_enabled');
delete_option('llms_integration_email_alerts_enabled');
delete_site_option('llms_integration_email_alerts_enabled');
delete_option('llms_integration_low_attendance_threshold');
delete_site_option('llms_integration_low_attendance_threshold');
delete_option('llmsat_options');
delete_site_option('llmsat_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('llmsat_daily_attendance_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'llmsatck1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'llmsatck1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'llmsatck1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'llmsatck1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_llmsat_test_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_llmsat_test_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_llmsat_test_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_llmsat_test_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_llmsat_test_course' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_llmsat_test_course' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_llmsat_test_course' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_llmsat_test_course' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_llms_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_llms_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_llms_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_llms_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_llms_enrollment_opens_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_llms_enrollment_opens_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_llms_enrollment_opens_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_llms_enrollment_opens_message' ) );

