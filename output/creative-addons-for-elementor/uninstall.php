<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crel_version_first');
delete_site_option('crel_version_first');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('crel_version');
delete_site_option('crel_version');
delete_option('crel_preset_settings');
delete_site_option('crel_preset_settings');
delete_option('crel_error_log');
delete_site_option('crel_error_log');
delete_option('crel_long_notices');
delete_site_option('crel_long_notices');
delete_option('crel_one_time_notices');
delete_site_option('crel_one_time_notices');
delete_option('crel_show_upgrade_message');
delete_site_option('crel_show_upgrade_message');
delete_option('elementor_disable_color_schemes');
delete_site_option('elementor_disable_color_schemes');
delete_option('elementor_disable_typography_schemes');
delete_site_option('elementor_disable_typography_schemes');

// Delete Transients
delete_transient('_crel_plugin_installed');
delete_site_transient('_crel_plugin_installed');
delete_transient('_crel_plugin_activated');
delete_site_transient('_crel_plugin_activated');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

