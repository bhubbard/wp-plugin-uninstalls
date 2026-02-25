<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smtpfm_smtp_settings');
delete_site_option('smtpfm_smtp_settings');
delete_option('smtpfm_recaptcha_settings');
delete_site_option('smtpfm_recaptcha_settings');
delete_option('smtpfm_email_templates');
delete_site_option('smtpfm_email_templates');
delete_option('smtpfm_version');
delete_site_option('smtpfm_version');
delete_option('smtpfm_install_date');
delete_site_option('smtpfm_install_date');
delete_option('smtpfm_upgrade_date');
delete_site_option('smtpfm_upgrade_date');

// Delete Transients
delete_transient('smtpfm_upgraded_to_2');
delete_site_transient('smtpfm_upgraded_to_2');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_smtpfm_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_smtpfm_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_smtpfm_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_smtpfm_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_smtpfm_skin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_smtpfm_skin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_smtpfm_skin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_smtpfm_skin' ) );

