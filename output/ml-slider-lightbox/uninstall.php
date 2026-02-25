<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('metaslider_lightbox_migration_done');
delete_site_option('metaslider_lightbox_migration_done');
delete_option('metaslider_lightbox_general_options');
delete_site_option('metaslider_lightbox_general_options');
delete_option('metaslider_lightbox_content_options');
delete_site_option('metaslider_lightbox_content_options');
delete_option('metaslider_lightbox_manual_options');
delete_site_option('metaslider_lightbox_manual_options');
delete_option('metaslider_lightbox_appearance_options');
delete_site_option('metaslider_lightbox_appearance_options');
delete_option('metaslider_lightbox_icon_color_migration_done');
delete_site_option('metaslider_lightbox_icon_color_migration_done');
delete_option('metaslider_lightbox_background_color_migration_done');
delete_site_option('metaslider_lightbox_background_color_migration_done');
delete_option('ml_lightbox_options');
delete_site_option('ml_lightbox_options');
delete_option('metaslider_lightbox_plugin_version');
delete_site_option('metaslider_lightbox_plugin_version');
delete_option('metaslider_lightbox_plugin_path');
delete_site_option('metaslider_lightbox_plugin_path');

// Delete Transients
delete_transient('metaslider_lightbox_activation_redirect');
delete_site_transient('metaslider_lightbox_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ml-slider_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ml-slider_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ml-slider_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ml-slider_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ml-slider_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ml-slider_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ml-slider_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ml-slider_url' ) );

