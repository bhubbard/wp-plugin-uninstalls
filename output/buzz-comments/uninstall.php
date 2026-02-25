<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buzz_comments_email');
delete_site_option('buzz_comments_email');
delete_option('buzz_comments_author_id');
delete_site_option('buzz_comments_author_id');
delete_option('buzz_comments_avatar_image');
delete_site_option('buzz_comments_avatar_image');
delete_option('buzz_comments_buzzNoteAfterContent');
delete_site_option('buzz_comments_buzzNoteAfterContent');
delete_option('buzz_comments_xfn');
delete_site_option('buzz_comments_xfn');
delete_option('buzz_comments_debug');
delete_site_option('buzz_comments_debug');
delete_option('buzz_comments_version');
delete_site_option('buzz_comments_version');
delete_option('buzz_comments_pid');
delete_site_option('buzz_comments_pid');
delete_option('buzz_comments_author_uri');
delete_site_option('buzz_comments_author_uri');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'buzz_comments_comment_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'buzz_comments_comment_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'buzz_comments_comment_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'buzz_comments_comment_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'buzz_comments_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'buzz_comments_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'buzz_comments_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'buzz_comments_data' ) );

