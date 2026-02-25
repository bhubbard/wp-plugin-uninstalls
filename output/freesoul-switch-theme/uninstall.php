<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('EOS_SW_VERSION');
delete_site_option('EOS_SW_VERSION');
delete_option('eos_themes');
delete_site_option('eos_themes');

// Delete Transients
delete_transient('freesoul-sw-updating-mu');
delete_site_transient('freesoul-sw-updating-mu');
delete_transient('freesoul-sw-notice-fail');
delete_site_transient('freesoul-sw-notice-fail');
delete_transient('freesoul-sw-notice-succ');
delete_site_transient('freesoul-sw-notice-succ');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_theme_name_replace_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_theme_name_replace_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_theme_name_replace_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_theme_name_replace_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_eos_replace_theme_always_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_eos_replace_theme_always_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_eos_replace_theme_always_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_eos_replace_theme_always_key' ) );

