<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('__ES_SURVEY_base_path');
delete_site_option('__ES_SURVEY_base_path');
delete_option('__ES_SURVEY_base_path_old');
delete_site_option('__ES_SURVEY_base_path_old');
delete_option('__ES_SURVEY_general_widget');
delete_site_option('__ES_SURVEY_general_widget');
delete_option('__ES_SURVEY_home_widget');
delete_site_option('__ES_SURVEY_home_widget');
delete_option('ES_SURVEY_db_version');
delete_site_option('ES_SURVEY_db_version');
delete_option('ES_SURVEY_is_installed');
delete_site_option('ES_SURVEY_is_installed');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_no_of_questions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_no_of_questions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_no_of_questions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_no_of_questions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'ES_SURVEY_options_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'ES_SURVEY_options_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'ES_SURVEY_options_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'ES_SURVEY_options_%' ) );

