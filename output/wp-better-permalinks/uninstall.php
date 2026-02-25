<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wbp_notice_hidden');
delete_site_option('wbp_notice_hidden');
delete_option('wbp_settings');
delete_site_option('wbp_settings');
delete_option('wbp_terms');
delete_site_option('wbp_terms');
delete_option('wbp_posts');
delete_site_option('wbp_posts');
delete_option('wbp_posts_redirects');
delete_site_option('wbp_posts_redirects');
delete_option('wbp_terms_redirects');
delete_site_option('wbp_terms_redirects');

// Delete Transients
delete_transient('wp_better_permalinks_notice');
delete_site_transient('wp_better_permalinks_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_yoast_wpseo_primary_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_yoast_wpseo_primary_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_yoast_wpseo_primary_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_yoast_wpseo_primary_%' ) );

