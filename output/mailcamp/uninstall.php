<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailcamp_options_api');
delete_site_option('mailcamp_options_api');
delete_option('mailcamp_options_lists');
delete_site_option('mailcamp_options_lists');
delete_option('mailcamp_options_form');
delete_site_option('mailcamp_options_form');
delete_option('mailcamp_options_shortcode');
delete_site_option('mailcamp_options_shortcode');
delete_option('mailcamp_options_wc');
delete_site_option('mailcamp_options_wc');
delete_option('mailcamp_options_wc_fields');
delete_site_option('mailcamp_options_wc_fields');
delete_option('mailcamp_options');
delete_site_option('mailcamp_options');
delete_option('mailcamp_options_listids');
delete_site_option('mailcamp_options_listids');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_signup_checkbox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_signup_checkbox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_signup_checkbox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_signup_checkbox' ) );

