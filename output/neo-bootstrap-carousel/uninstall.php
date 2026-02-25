<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nbc-connection');
delete_site_option('nbc-connection');
delete_option('nbc_advanced_settings');
delete_site_option('nbc_advanced_settings');
delete_option('nbc_design_settings');
delete_site_option('nbc_design_settings');
delete_option('nbc_general_settings');
delete_site_option('nbc_general_settings');
delete_option('_nbc_plugin_version');
delete_site_option('_nbc_plugin_version');

// Delete Transients
delete_transient('_nbc_page_welcome_redirect');
delete_site_transient('_nbc_page_welcome_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_neo_bootstrap_carousel_slide_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_neo_bootstrap_carousel_slide_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_neo_bootstrap_carousel_slide_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_neo_bootstrap_carousel_slide_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_neo_bootstrap_carousel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_neo_bootstrap_carousel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_neo_bootstrap_carousel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_neo_bootstrap_carousel' ) );

