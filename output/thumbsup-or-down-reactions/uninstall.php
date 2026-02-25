<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('thumordoreact_label_text');
delete_site_option('thumordoreact_label_text');
delete_option('thumordoreact_like_text');
delete_site_option('thumordoreact_like_text');
delete_option('thumordoreact_dislike_text');
delete_site_option('thumordoreact_dislike_text');
delete_option('thumordoreact_color');
delete_site_option('thumordoreact_color');
delete_option('thumordoreact_thumb_size');
delete_site_option('thumordoreact_thumb_size');
delete_option('thumordoreact_count_size');
delete_site_option('thumordoreact_count_size');
delete_option('thumordoreact_vote_message_size');
delete_site_option('thumordoreact_vote_message_size');
delete_option('thumordoreact_post_types');
delete_site_option('thumordoreact_post_types');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumordoreact_likes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumordoreact_likes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumordoreact_likes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumordoreact_likes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumordoreact_dislikes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumordoreact_dislikes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumordoreact_dislikes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumordoreact_dislikes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_thumordoreact_ip_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_thumordoreact_ip_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_thumordoreact_ip_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_thumordoreact_ip_%' ) );

