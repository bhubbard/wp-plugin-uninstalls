<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('opengraphmagic_service_options');
delete_site_option('opengraphmagic_service_options');
delete_option('opengraphmagic_ttl');
delete_site_option('opengraphmagic_ttl');
delete_option('opengraphmagic_rewrite_rules_flag');
delete_site_option('opengraphmagic_rewrite_rules_flag');
delete_option('opengraphmagic_activated');
delete_site_option('opengraphmagic_activated');
delete_option('opengraphmagic_show_thank_you');
delete_site_option('opengraphmagic_show_thank_you');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'opengraphmagic_image_creation_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'opengraphmagic_image_creation_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'opengraphmagic_image_creation_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'opengraphmagic_image_creation_time' ) );

