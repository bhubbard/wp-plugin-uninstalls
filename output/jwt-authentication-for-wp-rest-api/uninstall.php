<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jwt_auth_options');
delete_site_option('jwt_auth_options');
delete_option('jwt_auth_dismissed_notices');
delete_site_option('jwt_auth_dismissed_notices');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('jwt_auth_install_date');
delete_site_option('jwt_auth_install_date');
delete_option('jwt_auth_tokens_created');
delete_site_option('jwt_auth_tokens_created');

// Clear Cron Jobs
wp_clear_scheduled_hook('jwt_auth_share_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'jwt_auth_survey_completed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'jwt_auth_survey_completed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'jwt_auth_survey_completed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'jwt_auth_survey_completed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'jwt_auth_survey_dismissal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'jwt_auth_survey_dismissal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'jwt_auth_survey_dismissal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'jwt_auth_survey_dismissal' ) );

