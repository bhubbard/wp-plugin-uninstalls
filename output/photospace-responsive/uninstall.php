<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('psres_max_image_width');
delete_site_option('psres_max_image_width');
delete_option('psres_max_image_height');
delete_site_option('psres_max_image_height');
delete_option('psres_thumbnail_crop');
delete_site_option('psres_thumbnail_crop');
delete_option('psres_num_thumb');
delete_site_option('psres_num_thumb');
delete_option('psres_show_captions');
delete_site_option('psres_show_captions');
delete_option('psres_show_controls');
delete_site_option('psres_show_controls');
delete_option('psres_auto_play');
delete_site_option('psres_auto_play');
delete_option('psres_hide_thumbs');
delete_site_option('psres_hide_thumbs');
delete_option('psres_delay');
delete_site_option('psres_delay');
delete_option('psres_enable_history');
delete_site_option('psres_enable_history');
delete_option('psres_play_text');
delete_site_option('psres_play_text');
delete_option('psres_pause_text');
delete_site_option('psres_pause_text');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('psres_reset_css');
delete_site_option('psres_reset_css');
delete_option('psres_thumbnail_width');
delete_site_option('psres_thumbnail_width');
delete_option('psres_thumbnail_height');
delete_site_option('psres_thumbnail_height');
delete_option('psres_button_size');
delete_site_option('psres_button_size');
delete_option('psres_thumbnail_margin');
delete_site_option('psres_thumbnail_margin');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

