<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bp_ning_group_array');
delete_site_option('bp_ning_group_array');
delete_option('bp_ning_import_users');
delete_site_option('bp_ning_import_users');
delete_option('bp_ning_user_array');
delete_site_option('bp_ning_user_array');
delete_option('bp_ning_import_finished');
delete_site_option('bp_ning_import_finished');
delete_option('bp_ning_emails_sent');
delete_site_option('bp_ning_emails_sent');
delete_option('bp_ning_profiles_imported');
delete_site_option('bp_ning_profiles_imported');
delete_option('bp_ning_profile_mapping');
delete_site_option('bp_ning_profile_mapping');
delete_option('bp_ning_discussions_imported');
delete_site_option('bp_ning_discussions_imported');
delete_option('bp_ning_events_imported');
delete_site_option('bp_ning_events_imported');
delete_option('bp_ning_emails_sent_to');
delete_site_option('bp_ning_emails_sent_to');
delete_option('bp-xprofile-fullname-field-name');
delete_site_option('bp-xprofile-fullname-field-name');
delete_option('bp_ning_skip_forum_activity');
delete_site_option('bp_ning_skip_forum_activity');
delete_option('bp_ning_import_email_subject');
delete_site_option('bp_ning_import_email_subject');
delete_option('bp_ning_import_email_text');
delete_site_option('bp_ning_import_email_text');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ning_comments_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ning_comments_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ning_comments_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ning_comments_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ning_profile_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ning_profile_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ning_profile_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ning_profile_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bp_ning_event_website' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bp_ning_event_website' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bp_ning_event_website' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bp_ning_event_website' ) );

