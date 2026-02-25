<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wapt_premium_status');
delete_site_option('wapt_premium_status');
delete_option('wapt_license_status');
delete_site_option('wapt_license_status');
delete_option('wapt_last_checked');
delete_site_option('wapt_last_checked');
delete_option('wapt_license_key');
delete_site_option('wapt_license_key');
delete_option('wapt_license_message');
delete_site_option('wapt_license_message');
delete_option('wapt_license_expires');
delete_site_option('wapt_license_expires');
delete_option('wapt_alt_title_locations');
delete_site_option('wapt_alt_title_locations');
delete_option('wapt_gemini_api_key');
delete_site_option('wapt_gemini_api_key');

// Delete Transients
delete_transient('wapt_is_licensed');
delete_site_transient('wapt_is_licensed');

// Clear Cron Jobs
wp_clear_scheduled_hook('wapt_check_license_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'alternative_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'alternative_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'alternative_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'alternative_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'disable_alt_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'disable_alt_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'disable_alt_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'disable_alt_title' ) );

