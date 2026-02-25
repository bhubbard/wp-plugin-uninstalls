<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('k-brb-field-on');
delete_site_option('k-brb-field-on');
delete_option('k-brb-field-who');
delete_site_option('k-brb-field-who');
delete_option('k-brb-field-logo');
delete_site_option('k-brb-field-logo');
delete_option('k-brb-field-title');
delete_site_option('k-brb-field-title');
delete_option('k-brb-field-text');
delete_site_option('k-brb-field-text');
delete_option('k-brb-field-facebook');
delete_site_option('k-brb-field-facebook');
delete_option('k-brb-field-github');
delete_site_option('k-brb-field-github');
delete_option('k-brb-field-googleplus');
delete_site_option('k-brb-field-googleplus');
delete_option('k-brb-field-instagram');
delete_site_option('k-brb-field-instagram');
delete_option('k-brb-field-linkedin');
delete_site_option('k-brb-field-linkedin');
delete_option('k-brb-field-twitter');
delete_site_option('k-brb-field-twitter');
delete_option('k-brb-field-youtube');
delete_site_option('k-brb-field-youtube');
delete_option('k-brb-field-icons-style');
delete_site_option('k-brb-field-icons-style');
delete_option('k-brb-field-background-color');
delete_site_option('k-brb-field-background-color');
delete_option('k-brb-field-border-color');
delete_site_option('k-brb-field-border-color');
delete_option('k-brb-field-title-color');
delete_site_option('k-brb-field-title-color');
delete_option('k-brb-field-text-color');
delete_site_option('k-brb-field-text-color');
delete_option('k-brb-field-link-color');
delete_site_option('k-brb-field-link-color');
delete_option('k-brb-field-head');
delete_site_option('k-brb-field-head');
delete_option('k-brb-field-body');
delete_site_option('k-brb-field-body');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'k-brb-field-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

