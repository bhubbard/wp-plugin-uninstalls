<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ftm_validate_required');
delete_site_option('ftm_validate_required');
delete_option('ftm_validate_type');
delete_site_option('ftm_validate_type');
delete_option('ftm_mail_failed');
delete_site_option('ftm_mail_failed');
delete_option('ftm_mail_success');
delete_site_option('ftm_mail_success');
delete_option('ftm_mail');
delete_site_option('ftm_mail');
delete_option('ftm_name');
delete_site_option('ftm_name');
delete_option('ftm_template_layout_if');
delete_site_option('ftm_template_layout_if');
delete_option('ftm_template_layout');
delete_site_option('ftm_template_layout');
delete_option('ftm_smtp_if');
delete_site_option('ftm_smtp_if');
delete_option('ftm_smtp_username');
delete_site_option('ftm_smtp_username');
delete_option('ftm_smtp_password');
delete_site_option('ftm_smtp_password');
delete_option('ftm_smtp_host');
delete_site_option('ftm_smtp_host');
delete_option('ftm_smtp_from');
delete_site_option('ftm_smtp_from');
delete_option('ftm_smtp_port');
delete_site_option('ftm_smtp_port');
delete_option('ftm_wp_all');
delete_site_option('ftm_wp_all');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ftm_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ftm_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ftm_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ftm_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ftm_send_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ftm_send_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ftm_send_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ftm_send_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ftm_from_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ftm_from_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ftm_from_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ftm_from_email' ) );

