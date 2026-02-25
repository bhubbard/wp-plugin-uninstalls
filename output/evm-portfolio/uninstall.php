<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('evm_fb');
delete_site_option('evm_fb');
delete_option('evm_twitter');
delete_site_option('evm_twitter');
delete_option('evm_linkedin');
delete_site_option('evm_linkedin');
delete_option('evm_height');
delete_site_option('evm_height');
delete_option('evm_width');
delete_site_option('evm_width');
delete_option('evm_tcolor');
delete_site_option('evm_tcolor');
delete_option('evm_color');
delete_site_option('evm_color');
delete_option('evm_htbcolor');
delete_site_option('evm_htbcolor');
delete_option('evm_htcolor');
delete_site_option('evm_htcolor');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_url' ) );

