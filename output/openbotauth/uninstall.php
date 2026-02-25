<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('openbotauth_use_hosted_verifier');
delete_site_option('openbotauth_use_hosted_verifier');
delete_option('openbotauth_verifier_url');
delete_site_option('openbotauth_verifier_url');
delete_option('openbotauth_policy');
delete_site_option('openbotauth_policy');
delete_option('openbotauth_payment_url');
delete_site_option('openbotauth_payment_url');
delete_option('openbotauth_llms_enabled');
delete_site_option('openbotauth_llms_enabled');
delete_option('openbotauth_feed_enabled');
delete_site_option('openbotauth_feed_enabled');
delete_option('openbotauth_feed_limit');
delete_site_option('openbotauth_feed_limit');
delete_option('openbotauth_feed_post_types');
delete_site_option('openbotauth_feed_post_types');
delete_option('openbotauth_prefer_yoast_llms');
delete_site_option('openbotauth_prefer_yoast_llms');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%signed_total' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%verified_total' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%requests_total' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('openbotauth_markdown_enabled');
delete_site_option('openbotauth_markdown_enabled');

// Delete Transients
delete_transient('openbotauth_cleanup_ran');
delete_site_transient('openbotauth_cleanup_ran');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_openbotauth_policy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_openbotauth_policy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_openbotauth_policy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_openbotauth_policy' ) );

