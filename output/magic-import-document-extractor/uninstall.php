<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('magic_import_document_extractor_settings');
delete_site_option('magic_import_document_extractor_settings');
delete_option('magic_import_document_extractor_license_key');
delete_site_option('magic_import_document_extractor_license_key');
delete_option('magic_import_document_extractor_license_email');
delete_site_option('magic_import_document_extractor_license_email');
delete_option('magic_import_document_extractor_license_status');
delete_site_option('magic_import_document_extractor_license_status');
delete_option('magic_import_document_extractor_credits_total');
delete_site_option('magic_import_document_extractor_credits_total');
delete_option('magic_import_document_extractor_credits_remaining');
delete_site_option('magic_import_document_extractor_credits_remaining');
delete_option('magic_import_document_extractor_reset_date');
delete_site_option('magic_import_document_extractor_reset_date');
delete_option('magic_import_document_extractor_plan_name');
delete_site_option('magic_import_document_extractor_plan_name');
delete_option('magic_import_document_extractor_current_usage');
delete_site_option('magic_import_document_extractor_current_usage');
delete_option('magic_import_document_extractor_license_tier');
delete_site_option('magic_import_document_extractor_license_tier');
delete_option('magic_import_document_extractor_pattern_usage');
delete_site_option('magic_import_document_extractor_pattern_usage');
delete_option('magic_import_document_extractor_form_activity');
delete_site_option('magic_import_document_extractor_form_activity');
delete_option('magic_import_document_extractor_last_document_credits');
delete_site_option('magic_import_document_extractor_last_document_credits');
delete_option('magic_import_document_extractor_last_usage_sync');
delete_site_option('magic_import_document_extractor_last_usage_sync');

// Delete Transients
delete_transient('magic_import_document_extractor_license_notice');
delete_site_transient('magic_import_document_extractor_license_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpforms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpforms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpforms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpforms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'forminator_form_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'forminator_form_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'forminator_form_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'forminator_form_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'forminator_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'forminator_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'forminator_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'forminator_form' ) );

