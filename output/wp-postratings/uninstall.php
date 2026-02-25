<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('postratings_image');
delete_site_option('postratings_image');
delete_option('postratings_max');
delete_site_option('postratings_max');
delete_option('postratings_template_vote');
delete_site_option('postratings_template_vote');
delete_option('postratings_template_text');
delete_site_option('postratings_template_text');
delete_option('postratings_template_none');
delete_site_option('postratings_template_none');
delete_option('postratings_logging_method');
delete_site_option('postratings_logging_method');
delete_option('postratings_allowtorate');
delete_site_option('postratings_allowtorate');
delete_option('postratings_ratingstext');
delete_site_option('postratings_ratingstext');
delete_option('postratings_template_highestrated');
delete_site_option('postratings_template_highestrated');
delete_option('postratings_ajax_style');
delete_site_option('postratings_ajax_style');
delete_option('postratings_ratingsvalue');
delete_site_option('postratings_ratingsvalue');
delete_option('postratings_customrating');
delete_site_option('postratings_customrating');
delete_option('postratings_template_permission');
delete_site_option('postratings_template_permission');
delete_option('postratings_template_mostrated');
delete_site_option('postratings_template_mostrated');
delete_option('widget_ratings_highest_rated');
delete_site_option('widget_ratings_highest_rated');
delete_option('widget_ratings_most_rated');
delete_site_option('widget_ratings_most_rated');
delete_option('postratings_options');
delete_site_option('postratings_options');
delete_option('stats_display');
delete_site_option('stats_display');
delete_option('stats_mostlimit');
delete_site_option('stats_mostlimit');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ratings_users' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ratings_users' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ratings_users' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ratings_users' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ratings_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ratings_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ratings_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ratings_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ratings_average' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ratings_average' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ratings_average' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ratings_average' ) );

