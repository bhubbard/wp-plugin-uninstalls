<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ccbSimpleTwitter-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ccbSimpleTwitter-username');
delete_site_option('ccbSimpleTwitter-username');
delete_option('ccbSimpleTwitter-maxTwitt');
delete_site_option('ccbSimpleTwitter-maxTwitt');
delete_option('ccbSimpleTwitter-replaceKey');
delete_site_option('ccbSimpleTwitter-replaceKey');
delete_option('ccbSimpleTwitter-replaceId');
delete_site_option('ccbSimpleTwitter-replaceId');
delete_option('ccbSimpleTwitter-onTime');
delete_site_option('ccbSimpleTwitter-onTime');
delete_option('ccbSimpleTwitter-offTime');
delete_site_option('ccbSimpleTwitter-offTime');
delete_option('ccbSimpleTwitter-fadeTime');
delete_site_option('ccbSimpleTwitter-fadeTime');

