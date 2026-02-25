<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('activated_glg_plugin');
delete_site_option('activated_glg_plugin');
delete_option('glg_gallery_active');
delete_site_option('glg_gallery_active');
delete_option('glg_gallery_autoplay');
delete_site_option('glg_gallery_autoplay');
delete_option('ecf_slide_every');
delete_site_option('ecf_slide_every');
delete_option('glg_gallery_thumbnails');
delete_site_option('glg_gallery_thumbnails');
delete_option('glg_gallery_overlay_color');
delete_site_option('glg_gallery_overlay_color');
delete_option('glg_gallery_show_captions');
delete_site_option('glg_gallery_show_captions');
delete_option('glg_gallery_fancy_caption');
delete_site_option('glg_gallery_fancy_caption');
delete_option('glg_trial_notify');
delete_site_option('glg_trial_notify');

// Delete Transients
delete_transient('glg_premium_plugins');
delete_site_transient('glg_premium_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'glg_meta_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'glg_meta_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'glg_meta_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'glg_meta_options' ) );

