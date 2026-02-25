<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('occidg_license_key');
delete_site_option('occidg_license_key');
delete_option('occidg_ai_model');
delete_site_option('occidg_ai_model');
delete_option('occidg_auto_add_details');
delete_site_option('occidg_auto_add_details');
delete_option('occidg_metadata_fields');
delete_site_option('occidg_metadata_fields');
delete_option('occidg_override_metadata');
delete_site_option('occidg_override_metadata');
delete_option('occidg_language');
delete_site_option('occidg_language');
delete_option('occidg_trial_expired');
delete_site_option('occidg_trial_expired');
delete_option('occidg_license_status');
delete_site_option('occidg_license_status');
delete_option('occidg_trial_usage');
delete_site_option('occidg_trial_usage');
delete_option('occidg_activation_redirect');
delete_site_option('occidg_activation_redirect');
delete_option('occidg_first_time');
delete_site_option('occidg_first_time');

// Delete Transients
delete_transient('occidg_trial_salt');
delete_site_transient('occidg_trial_salt');
delete_transient('occidg_image_error');
delete_site_transient('occidg_image_error');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

