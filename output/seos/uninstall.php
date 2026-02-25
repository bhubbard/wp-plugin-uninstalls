<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seos_canonical');
delete_site_option('seos_canonical');
delete_option('seos_keywords');
delete_site_option('seos_keywords');
delete_option('seos_description');
delete_site_option('seos_description');
delete_option('seos_google_verification');
delete_site_option('seos_google_verification');
delete_option('google_analytics');
delete_site_option('google_analytics');
delete_option('seos_yandex_verification');
delete_site_option('seos_yandex_verification');
delete_option('seos_bing_verification');
delete_site_option('seos_bing_verification');
delete_option('seos_site_name');
delete_site_option('seos_site_name');
delete_option('seos_facebook_image');
delete_site_option('seos_facebook_image');
delete_option('seos_facebook_title');
delete_site_option('seos_facebook_title');
delete_option('seos_facebook_description');
delete_site_option('seos_facebook_description');
delete_option('seos_facebook_id');
delete_site_option('seos_facebook_id');
delete_option('seos_locale');
delete_site_option('seos_locale');
delete_option('seos_locale_alternate');
delete_site_option('seos_locale_alternate');
delete_option('seos_locale_alternate1');
delete_site_option('seos_locale_alternate1');
delete_option('seos_graph_url');
delete_site_option('seos_graph_url');
delete_option('seos_geo_region');
delete_site_option('seos_geo_region');
delete_option('seos_geo_placename');
delete_site_option('seos_geo_placename');
delete_option('seos_geo_position');
delete_site_option('seos_geo_position');
delete_option('seos_icbm');
delete_site_option('seos_icbm');
delete_option('seos_twitter_card');
delete_site_option('seos_twitter_card');
delete_option('seos_twitter_site');
delete_site_option('seos_twitter_site');
delete_option('seos_twitter_title');
delete_site_option('seos_twitter_title');
delete_option('seos_twitter_description');
delete_site_option('seos_twitter_description');
delete_option('seos_twitter_image');
delete_site_option('seos_twitter_image');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'seos_sticky_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'seos_sticky_url_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'seos_sticky_color_sheme%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'seos_sticky_color_text%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'seos_note_datepicker_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'seos_note_name_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('seos_sticky_1');
delete_site_option('seos_sticky_1');
delete_option('seos_sticky_url_1');
delete_site_option('seos_sticky_url_1');
delete_option('seos_publisher');
delete_site_option('seos_publisher');
delete_option('seos_alexa_verification');
delete_site_option('seos_alexa_verification');
delete_option('seos_pinterest_verification');
delete_site_option('seos_pinterest_verification');

