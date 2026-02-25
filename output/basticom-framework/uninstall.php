<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bstcmfw-xmlrpc');
delete_site_option('bstcmfw-xmlrpc');
delete_option('bstcmfw-pingbacks');
delete_site_option('bstcmfw-pingbacks');
delete_option('bstcmfw-atom');
delete_site_option('bstcmfw-atom');
delete_option('bstcmfw-emojis');
delete_site_option('bstcmfw-emojis');
delete_option('bstcmfw-manifest');
delete_site_option('bstcmfw-manifest');
delete_option('bstcmfw-comments');
delete_site_option('bstcmfw-comments');
delete_option('bstcmfw-widgets');
delete_site_option('bstcmfw-widgets');
delete_option('bstcmfw-tags');
delete_site_option('bstcmfw-tags');
delete_option('bstcmfw-posts');
delete_site_option('bstcmfw-posts');
delete_option('bstcmfw-links');
delete_site_option('bstcmfw-links');
delete_option('bstcmfw-dashboard');
delete_site_option('bstcmfw-dashboard');
delete_option('bstcmfw-themeeditor');
delete_site_option('bstcmfw-themeeditor');
delete_option('bstcmfw-cleanadminbar');
delete_site_option('bstcmfw-cleanadminbar');
delete_option('bstcmfw-updatenotifications');
delete_site_option('bstcmfw-updatenotifications');
delete_option('bstcmfw-optimizequery');
delete_site_option('bstcmfw-optimizequery');
delete_option('bstcmfw-gfbuttons');
delete_site_option('bstcmfw-gfbuttons');
delete_option('bstcmfw-gferrors');
delete_site_option('bstcmfw-gferrors');
delete_option('bstcmfw-disableadminbar');
delete_site_option('bstcmfw-disableadminbar');
delete_option('bstcmfw-adddefer');
delete_site_option('bstcmfw-adddefer');
delete_option('bstcmfw-removeversion');
delete_site_option('bstcmfw-removeversion');
delete_option('bstcmfw-jigsaw');
delete_site_option('bstcmfw-jigsaw');
delete_option('bstcmfw-thumbnails');
delete_site_option('bstcmfw-thumbnails');
delete_option('bstcmfw-imagecompression');
delete_site_option('bstcmfw-imagecompression');
delete_option('bstcmfw-woocommerce');
delete_site_option('bstcmfw-woocommerce');
delete_option('bstcmfw-googleapikey');
delete_site_option('bstcmfw-googleapikey');
delete_option('bstcmfw-footertext');
delete_site_option('bstcmfw-footertext');
delete_option('bstcmfw-serverstats');
delete_site_option('bstcmfw-serverstats');
delete_option('bstcmfw-gform-hide-ip');
delete_site_option('bstcmfw-gform-hide-ip');
delete_option('bstcmfw-cookie-enable');
delete_site_option('bstcmfw-cookie-enable');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bstcmfw-cookie-read-more-link_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bstcmfw-cookie-text_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bstcmfw-cookie-accept-button-text_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bstcmfw-cookie-decline-button-text_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bstcmfw-cookie-wrapper-color');
delete_site_option('bstcmfw-cookie-wrapper-color');
delete_option('bstcmfw-cookie-accept-button-color');
delete_site_option('bstcmfw-cookie-accept-button-color');
delete_option('bstcmfw-cookie-decline-button-color');
delete_site_option('bstcmfw-cookie-decline-button-color');
delete_option('bstcmfw-cookie-text-font-color');
delete_site_option('bstcmfw-cookie-text-font-color');
delete_option('bstcmfw-cookie-button-font-color');
delete_site_option('bstcmfw-cookie-button-font-color');
delete_option('bstcmfw-cookie-exdays');
delete_site_option('bstcmfw-cookie-exdays');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bstcmfw-cookie-read-more-button-text_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bstcmfw-cookie-location-setting');
delete_site_option('bstcmfw-cookie-location-setting');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bstcmfw-cookie-header-accept-scripts_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bstcmfw-cookie-footer-accept-scripts_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bstcmfw-cookie-header-decline-scripts_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bstcmfw-cookie-footer-decline-scripts_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bstcmfw-gform-remove-submission');
delete_site_option('bstcmfw-gform-remove-submission');
delete_option('database_version');
delete_site_option('database_version');
delete_option('bstcmfw-gform-iframe-background-color');
delete_site_option('bstcmfw-gform-iframe-background-color');
delete_option('bstcmfw-gform-iframe-text-color');
delete_site_option('bstcmfw-gform-iframe-text-color');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bstcmfw-gform-iframe-text_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bstcmfw-gform-iframe-button-text_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bstcmfw-company');
delete_site_option('bstcmfw-company');

