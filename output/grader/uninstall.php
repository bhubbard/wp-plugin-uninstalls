<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('grader_grade_color');
delete_site_option('grader_grade_color');
delete_option('grader_comment_color');
delete_site_option('grader_comment_color');
delete_option('grader_warning_msg');
delete_site_option('grader_warning_msg');
delete_option('grader_hidden_comment_text');
delete_site_option('grader_hidden_comment_text');
delete_option('grader_comment_delim');
delete_site_option('grader_comment_delim');
delete_option('grader_grade_token');
delete_site_option('grader_grade_token');
delete_option('grader_allow_edits');
delete_site_option('grader_allow_edits');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_grade_comment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_grade_comment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_grade_comment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_grade_comment' ) );

