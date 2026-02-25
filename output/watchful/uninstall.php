<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('watchfulSettings');
delete_site_option('watchfulSettings');
delete_option('watchful_last_login_time');
delete_site_option('watchful_last_login_time');
delete_option('watchful_last_login_error_counter');
delete_site_option('watchful_last_login_error_counter');
delete_option('watchfulDoActivationRedirect');
delete_site_option('watchfulDoActivationRedirect');
delete_option('watchfulMessage');
delete_site_option('watchfulMessage');

// Delete Transients
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('signatures');
delete_site_transient('signatures');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'watchful_sso_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'watchful_sso_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'watchful_sso_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'watchful_sso_id' ) );

