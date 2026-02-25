<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpsr_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpsr_last_changelog');
delete_site_option('wpsr_last_changelog');
delete_option('wpsr_version');
delete_site_option('wpsr_version');
delete_option('wpsr_since');
delete_site_option('wpsr_since');
delete_option('wpsr_sharebar_settings');
delete_site_option('wpsr_sharebar_settings');
delete_option('wpsr_button_settings');
delete_site_option('wpsr_button_settings');
delete_option('wpsr_general_settings');
delete_site_option('wpsr_general_settings');
delete_option('wpsr_social_icons_settings');
delete_site_option('wpsr_social_icons_settings');
delete_option('wpsr_floating_sharebar_settings');
delete_site_option('wpsr_floating_sharebar_settings');
delete_option('wpsr_followbar_settings');
delete_site_option('wpsr_followbar_settings');
delete_option('wpsr_text_sharebar_settings');
delete_site_option('wpsr_text_sharebar_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpsr_post_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpsr_post_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpsr_post_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpsr_post_settings' ) );

