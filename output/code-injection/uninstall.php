<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ci_unsafe_widgets_shortcodes');
delete_site_option('ci_unsafe_widgets_shortcodes');
delete_option('ci_unsafe_widgets_php');
delete_site_option('ci_unsafe_widgets_php');
delete_option('ci_unsafe_ignore_keys');
delete_site_option('ci_unsafe_ignore_keys');
delete_option('ci_unsafe_keys');
delete_site_option('ci_unsafe_keys');
delete_option('ci_code_injection_allow_shortcode');
delete_site_option('ci_code_injection_allow_shortcode');
delete_option('ci_code_injection_cache_max_age');
delete_site_option('ci_code_injection_cache_max_age');
delete_option('ci_code_injection_db_version');
delete_site_option('ci_code_injection_db_version');
delete_option('ci_code_injection_role_version');
delete_site_option('ci_code_injection_role_version');
delete_option('ci_role_version');
delete_site_option('ci_role_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'code_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'code_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'code_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'code_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'code_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'code_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'code_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'code_slug' ) );

