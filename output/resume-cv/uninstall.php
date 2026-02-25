<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('resumecv_options');
delete_site_option('resumecv_options');
delete_option('resumecv_award_options');
delete_site_option('resumecv_award_options');
delete_option('resumecv_contact_options');
delete_site_option('resumecv_contact_options');
delete_option('resumecv_education_options');
delete_site_option('resumecv_education_options');
delete_option('resumecv_experience_options');
delete_site_option('resumecv_experience_options');
delete_option('resumecv_hobby_options');
delete_site_option('resumecv_hobby_options');
delete_option('resumecv_profile_options');
delete_site_option('resumecv_profile_options');
delete_option('resumecv_qualification_options');
delete_site_option('resumecv_qualification_options');
delete_option('resumecv_reference_options');
delete_site_option('resumecv_reference_options');
delete_option('resumecv_service_options');
delete_site_option('resumecv_service_options');
delete_option('resumecv_skillbar_options');
delete_site_option('resumecv_skillbar_options');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

