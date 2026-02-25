<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_message' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('svg_playlistline');
delete_site_option('svg_playlistline');
delete_option('svg_playlistpage');
delete_site_option('svg_playlistpage');
delete_option('svg_embed');
delete_site_option('svg_embed');
delete_option('svg_playlistthumbnailsize');
delete_site_option('svg_playlistthumbnailsize');
delete_option('svg_playlisttitle');
delete_site_option('svg_playlisttitle');
delete_option('svg_playlistplayback');
delete_site_option('svg_playlistplayback');
delete_option('svg_css');
delete_site_option('svg_css');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpf_role_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

