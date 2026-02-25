<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('canalblog_importer_blog_uri');
delete_site_option('canalblog_importer_blog_uri');
delete_option('canalblog_overwrite_contents');
delete_site_option('canalblog_overwrite_contents');
delete_option('canalblog_comments_status');
delete_site_option('canalblog_comments_status');
delete_option('canalblog_trackbacks_status');
delete_site_option('canalblog_trackbacks_status');
delete_option('canalblog_importer_step');
delete_site_option('canalblog_importer_step');
delete_option('canalblog_importer_archives_current_index');
delete_site_option('canalblog_importer_archives_current_index');

// Delete Transients
delete_transient('canalblog_have_finished_archives');
delete_site_transient('canalblog_have_finished_archives');
delete_transient('canalblog_months');
delete_site_transient('canalblog_months');
delete_transient('canalblog_step_offset');
delete_site_transient('canalblog_step_offset');
delete_transient('canalblog_permalinks');
delete_site_transient('canalblog_permalinks');
delete_transient('canalblog_have_finished_categories');
delete_site_transient('canalblog_have_finished_categories');
delete_transient('canalblog_categories');
delete_site_transient('canalblog_categories');
delete_transient('canalblog_have_finished_cleanup');
delete_site_transient('canalblog_have_finished_cleanup');
delete_transient('canalblog_have_finished_posts');
delete_site_transient('canalblog_have_finished_posts');
delete_transient('canalblog_have_finished_tags');
delete_site_transient('canalblog_have_finished_tags');
delete_transient('canalblog_tags');
delete_site_transient('canalblog_tags');
delete_transient('canalblog_post_uris');
delete_site_transient('canalblog_post_uris');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'canalblog_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'canalblog_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'canalblog_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'canalblog_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'canalblog_uri' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'canalblog_uri' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'canalblog_uri' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'canalblog_uri' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'canalblog_attachment_uri' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'canalblog_attachment_uri' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'canalblog_attachment_uri' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'canalblog_attachment_uri' ) );

