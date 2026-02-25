<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('greenerwp_version');
delete_site_option('greenerwp_version');
delete_option('greenerwp_jpeg_quality');
delete_site_option('greenerwp_jpeg_quality');
delete_option('greenerwp_wpcf7_jquery_fix_enabled');
delete_site_option('greenerwp_wpcf7_jquery_fix_enabled');
delete_option('greenerwp_web_fonts_disable');
delete_site_option('greenerwp_web_fonts_disable');
delete_option('greenerwp_image_previews_enabled');
delete_site_option('greenerwp_image_previews_enabled');
delete_option('greenerwp_recipes');
delete_site_option('greenerwp_recipes');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'greenerwp_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('greenerwp_statistics_enabled');
delete_site_option('greenerwp_statistics_enabled');
delete_option('greenerwp_image_previews_lazy_loading');
delete_site_option('greenerwp_image_previews_lazy_loading');

