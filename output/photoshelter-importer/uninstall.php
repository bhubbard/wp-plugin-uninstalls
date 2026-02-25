<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('photoshelter_importer_options');
delete_site_option('photoshelter_importer_options');
delete_option('photoshelter_importer_oauth_client_id');
delete_site_option('photoshelter_importer_oauth_client_id');
delete_option('photoshelter_importer_oauth_client_secret');
delete_site_option('photoshelter_importer_oauth_client_secret');
delete_option('photoshelter_importer_oauth_access_token');
delete_site_option('photoshelter_importer_oauth_access_token');
delete_option('photoshelter_importer_oauth_access_token_expires');
delete_site_option('photoshelter_importer_oauth_access_token_expires');
delete_option('photoshelter_importer_oauth_access_token_expires_at');
delete_site_option('photoshelter_importer_oauth_access_token_expires_at');
delete_option('photoshelter_importer_oauth_refresh_token');
delete_site_option('photoshelter_importer_oauth_refresh_token');
delete_option('photoshelter_importer_org_logged_in');
delete_site_option('photoshelter_importer_org_logged_in');
delete_option('photoshelter_importer_org_name');
delete_site_option('photoshelter_importer_org_name');
delete_option('photoshelter_importer_user_id');
delete_site_option('photoshelter_importer_user_id');
delete_option('photoshelter_importer_user_logged_in');
delete_site_option('photoshelter_importer_user_logged_in');

// Delete Transients
delete_transient('photoshelter_importer_token_set');
delete_site_transient('photoshelter_importer_token_set');
delete_transient('photoshelter_importer_oauth_state');
delete_site_transient('photoshelter_importer_oauth_state');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'photoshelter_importer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'photoshelter_importer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'photoshelter_importer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'photoshelter_importer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

