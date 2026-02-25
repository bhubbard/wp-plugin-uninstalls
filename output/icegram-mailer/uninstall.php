<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('icegram_mailer_ess_data');
delete_site_option('icegram_mailer_ess_data');
delete_option('icegram_mailer_opted_for_sending_service');
delete_site_option('icegram_mailer_opted_for_sending_service');
delete_option('icegram_mailer_status');
delete_site_option('icegram_mailer_status');
delete_option('icegram_mailer_onboarding_complete');
delete_site_option('icegram_mailer_onboarding_complete');
delete_option('icegram_mailer_mailer_settings');
delete_site_option('icegram_mailer_mailer_settings');
delete_option('icegram_mailer_branding_enabled');
delete_site_option('icegram_mailer_branding_enabled');
delete_option('icegram_mailer_test_mailbox_user');
delete_site_option('icegram_mailer_test_mailbox_user');
delete_option('icegram_mailer_db_version');
delete_site_option('icegram_mailer_db_version');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('icegram_mailer_installing');
delete_site_transient('icegram_mailer_installing');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_time' ) );

