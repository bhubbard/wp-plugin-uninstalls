<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('darkify');
delete_site_option('darkify');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
delete_option('darkify_version');
delete_site_option('darkify_version');
delete_option('darkify_first_version');
delete_site_option('darkify_first_version');
delete_option('darkify_activation_date');
delete_site_option('darkify_activation_date');
delete_option('darkify_db_version');
delete_site_option('darkify_db_version');
delete_option('darkify_review_notice_dismiss');
delete_site_option('darkify_review_notice_dismiss');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'themeatelier_offer_banner_dismissed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('themeatelier_plugins');
delete_site_transient('themeatelier_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_darkify_errors_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_darkify_errors_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_darkify_errors_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_darkify_errors_%' ) );

