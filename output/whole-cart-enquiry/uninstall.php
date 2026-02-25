<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woowhole_to_emailaddress');
delete_site_option('woowhole_to_emailaddress');
delete_option('woowhole_from_emailaddress');
delete_site_option('woowhole_from_emailaddress');
delete_option('woowhole_from_name');
delete_site_option('woowhole_from_name');
delete_option('woowhole_success_msg');
delete_site_option('woowhole_success_msg');
delete_option('woowhole_failed_msg');
delete_site_option('woowhole_failed_msg');
delete_option('woowhole_title');
delete_site_option('woowhole_title');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );

