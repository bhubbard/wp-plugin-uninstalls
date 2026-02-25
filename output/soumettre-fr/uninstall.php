<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('soumettre_api_key');
delete_site_option('soumettre_api_key');
delete_option('soumettre_api_secret');
delete_site_option('soumettre_api_secret');
delete_option('soumettre_settings');
delete_site_option('soumettre_settings');
delete_option('soumettre_default_author');
delete_site_option('soumettre_default_author');
delete_option('soumettre_error_notice');
delete_site_option('soumettre_error_notice');
delete_option('soumettre_auth_state');
delete_site_option('soumettre_auth_state');
delete_option('soumettre_spot_id');
delete_site_option('soumettre_spot_id');
delete_option('soumettre_email');
delete_site_option('soumettre_email');
delete_option('soumettre_commission');
delete_site_option('soumettre_commission');
delete_option('soum_sour_api_key');
delete_site_option('soum_sour_api_key');
delete_option('soum_sour_api_secret');
delete_site_option('soum_sour_api_secret');
delete_option('soum_sour_author');
delete_site_option('soum_sour_author');
delete_option('soum_sour_email');
delete_site_option('soum_sour_email');

// Delete Transients
delete_transient('soumettre_plugin_old_plugin_version');
delete_site_transient('soumettre_plugin_old_plugin_version');
delete_transient('soumettre_nonce');
delete_site_transient('soumettre_nonce');

// Clear Cron Jobs
wp_clear_scheduled_hook('soumettre_cron_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'soumettre_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'soumettre_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'soumettre_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'soumettre_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'soumettre_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'soumettre_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'soumettre_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'soumettre_id' ) );

