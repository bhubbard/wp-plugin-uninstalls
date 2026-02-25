<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sitemap_generator_by_kaboom_license');
delete_site_option('sitemap_generator_by_kaboom_license');
delete_option('sitemap_generator_exclude_ids');
delete_site_option('sitemap_generator_exclude_ids');
delete_option('sitemap_generator_exclude_post_types');
delete_site_option('sitemap_generator_exclude_post_types');
delete_option('form_email_catcher_by_kaboom_activated');
delete_site_option('form_email_catcher_by_kaboom_activated');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'leave_a_review_sitemap_kaboom_' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'leave_a_review_sitemap_kaboom_' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'leave_a_review_sitemap_kaboom_' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'leave_a_review_sitemap_kaboom_' ) );

