<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('csmm_current_version');
delete_site_option('csmm_current_version');
delete_option('csmm_last_version');
delete_site_option('csmm_last_version');
delete_option('csmm_settings');
delete_site_option('csmm_settings');
delete_option('csmm_templates');
delete_site_option('csmm_templates');
delete_option('csmm_content');
delete_site_option('csmm_content');
delete_option('csmm_social_media');
delete_site_option('csmm_social_media');
delete_option('csmm_more');
delete_site_option('csmm_more');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_custom_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_custom_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_custom_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_custom_notice' ) );

