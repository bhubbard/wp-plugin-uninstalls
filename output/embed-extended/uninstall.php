<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('embed_extended_version');
delete_site_option('embed_extended_version');
delete_option('embed_extended_notice_dismiss_greeting');
delete_site_option('embed_extended_notice_dismiss_greeting');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'embed_extended_notice_dismiss_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('embed_extended_url_patterns');
delete_site_option('embed_extended_url_patterns');
delete_option('embed_extended_url_patterns_mode');
delete_site_option('embed_extended_url_patterns_mode');
delete_option('embed_extended_gmaps_api_key');
delete_site_option('embed_extended_gmaps_api_key');
delete_option('embed_extended_parse_html_content');
delete_site_option('embed_extended_parse_html_content');
delete_option('embed_extended_thumbnail_position');
delete_site_option('embed_extended_thumbnail_position');
delete_option('embed_extended_custom_css');
delete_site_option('embed_extended_custom_css');

