<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cta_kit_button_style');
delete_site_option('cta_kit_button_style');
delete_option('cta_kit_button_color');
delete_site_option('cta_kit_button_color');
delete_option('cta_kit_enable_default_button');
delete_site_option('cta_kit_enable_default_button');
delete_option('cta_kit_enable_page_post_buttons');
delete_site_option('cta_kit_enable_page_post_buttons');
delete_option('cta_kit_default_button_link');
delete_site_option('cta_kit_default_button_link');
delete_option('cta_kit_default_button_text');
delete_site_option('cta_kit_default_button_text');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cta_kit_custom_button_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cta_kit_custom_button_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cta_kit_custom_button_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cta_kit_custom_button_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cta_kit_custom_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cta_kit_custom_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cta_kit_custom_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cta_kit_custom_button_text' ) );

