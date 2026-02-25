<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('redirection_lookup');
delete_site_option('redirection_lookup');
delete_option('redirection_post');
delete_site_option('redirection_post');
delete_option('redirection_root');
delete_site_option('redirection_root');
delete_option('redirection_index');
delete_site_option('redirection_index');
delete_option('redirection_options');
delete_site_option('redirection_options');
delete_option('rss_language');
delete_site_option('rss_language');
delete_option('prli_db_version');
delete_site_option('prli_db_version');
delete_option('quickppr_redirects');
delete_site_option('quickppr_redirects');
delete_option('301_redirects');
delete_site_option('301_redirects');

// Delete Transients
delete_transient('redirection_aggressive_delete');
delete_site_transient('redirection_aggressive_delete');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'redirection_log_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'redirection_log_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'redirection_log_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'redirection_log_per_page' ) );

