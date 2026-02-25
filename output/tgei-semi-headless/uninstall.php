<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tgei-semi-headless-field_status');
delete_site_option('tgei-semi-headless-field_status');
delete_option('tgei-semi-headless-field_redir_url');
delete_site_option('tgei-semi-headless-field_redir_url');
delete_option('tgei-semi-headless-field_redir_url_404');
delete_site_option('tgei-semi-headless-field_redir_url_404');
delete_option('tgei-semi-headless-field_allow_search');
delete_site_option('tgei-semi-headless-field_allow_search');
delete_option('tgei-semi-headles-field_allow_homepage');
delete_site_option('tgei-semi-headles-field_allow_homepage');
delete_option('tgei-semi-headless-field_allow_homepage');
delete_site_option('tgei-semi-headless-field_allow_homepage');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tgei-semi-headless-allow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tgei-semi-headless-allow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tgei-semi-headless-allow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tgei-semi-headless-allow' ) );

